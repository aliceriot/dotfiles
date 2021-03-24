require 'json'
require 'pathname'

def get_json(relpath)
  JSON.parse(File.read(relpath))
end

def expand(partial_path)
  Pathname(partial_path).expand_path
end

def git_pull(dir = Dir.pwd)
  Dir.chdir(dir) do
    %x{git checkout master}
    status = %x{git pull}
    puts status unless status =~ /Already up-to-date\./
  end
end

namespace :dotfiles do 
  def symlink_manifest
    get_json("./manifest/symlink.json")
  end

  def contains_dotfiles(path)
    path.to_s.match(/dotfiles/)
  end

  task :create_dotfile_dirs do
    symlink_manifest["directories"].each do |dirname| 
      name = expand dirname
      Dir.mkdir name unless Dir.exist? name
    end
  end

  task :symlink_dotfiles => [:create_dotfile_dirs] do
    symlink_manifest["dotfiles"].each do |symlink|
      dotfile_path = expand(symlink[0])
      symlink_path = expand(symlink[1])
      if !contains_dotfiles(symlink_path)
        if File.symlink?(symlink_path) || File.exists?(symlink_path)
          puts "removing :: #{symlink_path}"
        system "rm #{symlink_path}"
        end
      end
      puts "symlinking :: #{dotfile_path} -> #{symlink_path}"
      system "ln -s #{dotfile_path} #{symlink_path}"
    end
  end

  task :initialize_submodules do
    sh "git submodule init"
    sh "git submodule update"
  end

  task :update_submodules => [:initialize_submodules] do
    Dir.chdir("extras")
    Dir.entries(Dir.pwd).keep_if { |s| s != "." && s != ".." }.each do |submodule_dir|
      git_pull(submodule_dir)
    end
  end

  task :install_extras => [:initialize_submodules] do
    sh "./extras/fzf/install"
  end
end

namespace :packages do
  def arch_manifest
    get_json("./manifest/arch_packages.json")
  end

  def python_manifest
    get_json("./manifest/python_packages.json")
  end

  def package_installed?(pkg_name)
    sh "pacman -Qs #{pkg_name}"
  end

  task :update_lists do
    sh "sudo pacman -Syy --noconfirm"
  end

  task :update_packages => [:update_lists] do
    sh "sudo pacman -Syyu --noconfirm"
  end

  task :install_packages => [:update_packages] do
    arch_manifest["repos"].each do |pkg|
      sh "pacman -Qi #{pkg} > /dev/null" do |ok, res|
        sh "sudo pacman -S #{pkg} --noconfirm > /dev/null" if !ok
      end
    end
  end

  task :install_python_dependencies do
    python_manifest["packages"].each do |pkg|
      sh "sudo pip install #{pkg}"
    end
  end
end

namespace :system_configuration do
  task :set_default_applications do
    sh "xdg-mime default chromium.desktop x-scheme-handler/http"
    sh "xdg-mime default chromium.desktop x-scheme-handler/https"
    sh "xdg-mime default chromium.desktop text/html"
  end

  task :change_shell do
    sh "chsh -s $(which zsh)"
  end

  task :screenlock do
    systemd_dir = expand "/etc/systemd/system"
    service_file = "xscreensaver.service"
    dest = systemd_dir.to_s << "/" << service_file
    if ! File.exists? dest
      sh "sudo cp #{expand("~/dotfiles/X/xscreensaver.service").to_s} #{dest}"
    end

    sh "sudo systemctl enable xscreensaver.service"
    sh "sudo systemctl start xscreensaver.service"
  end

  task :setup => [:set_default_applications, :change_shell, :screenlock] do
  end
end

namespace :vim do
  vim_dir = expand "~/.vim"

  task :copy_vim_plug do
    sh "sh -c 'curl -fLo \"${XDG_DATA_HOME:-$HOME/.local/share}\"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'"
  end

  task :install_packages do
    sh "vim +PluginInstall +qall"
  end

  task :update do
    sh "vim +PluginUpdate +qall"
  end

  task :setup => [:copy_vim_plug, :install_packages, :setup_ycm] do
    mkdir_p vim_dir.to_s << "/backup"
    mkdir_p vim_dir.to_s << "/undo"
    puts "Vim setup complete!"
  end
end

namespace :i3 do
  url = "git@github.com:Airblader/i3.git"
  dir = expand "~/Code/i3-gaps"

  task :clone do
    sh "git clone #{url} #{dir}" if ! Dir.exists? dir
  end

  task :build do
    cd dir
    sh "git checkout gaps"
    sh "git pull"
    sh "make"
  end

  task :install => [:clone, :build] do
    sh "sudo make install"
  end
end

task vim: ["vim:setup"]
task default: ["packages:update_packages"]
task setup: [
  "packages:install_packages",
  "packages:install_python_dependencies",
  "dotfiles:symlink_dotfiles",
  "dotfiles:install_extras",
  "vim:setup",
  "i3:install",
  "system_configuration:setup"
]
