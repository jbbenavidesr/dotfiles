# Dotfiles

My personal dotfiles and system setup scripts. This repository contains everything needed to set up a new system with my preferred configurations and automated tasks.

## 📂 Repository Structure

- **bin/**: Contains all executable scripts
  - **tasks/**: Individual scripts for various system setup tasks (e.g. installation scripts)
  - **run-tasks.sh**: Main script that runs executables in tasks/
  - **deploy-configs.sh**: Script that deploys all configuration files to their proper locations

- **config/**: Contains all configuration files
  - **home/**: Files that belong directly in $HOME
  - **.config/**: Configuration files that belong in $HOME/.config

## 🚀 Quick Start

1. Clone this repository:
   git clone https://github.com/jbbenavidesr/dotfiles.git && cd dotfiles

2. Make scripts executable:
   chmod +x bin/run-tasks.sh bin/deploy-configs.sh && chmod +x bin/tasks/*

3. Run setup tasks:
   ./bin/run-tasks.sh

4. Deploy configuration files:
   ./bin/deploy-configs.sh

## 📝 How It Works

### Task Execution
The `run-tasks.sh` script automatically discovers and executes all scripts in the `bin/tasks/` directory. Each script in this directory is responsible for performing a specific setup task (installing applications, configuring system settings, etc.). By default, the script runs all executables found, but a filter parameter can be added in order to run only scripts that contain the filter in the name. For example, if you run `./bin/run-tasks.sh foo` you'll only run executables that contain "foo" in their name. You can also add the `--dry` flag in order to display which scripts would be run without actually running them.

### Configuration Deployment
The `deploy-configs.sh` script handles copying all configuration files to their appropriate locations:
- Files in `config/home/` are copied directly to `$HOME`
- The directory structure in `config/.config/` is mirrored to `$HOME/.config/`

If a file or directory already exists in the target location with that name, it will be deleted. A `--dry` flag can be added to see what would be deleted and then copied without actually doing it.

## ⚙️ Adding New Items

### Adding a New Task
1. Create a new script in `bin/tasks/`
2. Make it executable: `chmod +x bin/tasks/your-script.sh`
3. The script will automatically be included in the task execution process

### Adding New Configuration Files
1. Place files that belong in `$HOME` in `config/home/`
2. Place files that belong in `$HOME/.config` in `config/.config/`
3. Run `./bin/deploy-configs.sh` to deploy the new configurations

Additional locations can be added and the copy instruction should be added to the `deploy-configs.sh`. The script defines a `copy_dir` and `copy_file` functions that can be used to copy the file or directory to the correct location.

## ⚠️ Backup
The script should do a backup of the files to remove, but not doing it for the moment.

## 🙏 Credits and Inspiration

The setup in this repository is inspired by the setup explained by [The Primeagen](https://github.com/ThePrimeagen) in the course [My Dev Setup Is Better Than Yours at FrontendMasters](https://frontendmasters.com/courses/developer-productivity-v2/).
