# Dotfiles

My personal dotfiles and system setup scripts. This repository contains everything needed to set up a new system with my preferred configurations and automated tasks.

## 📂 Repository Structure

- **tasks/**: Individual scripts for various system setup tasks (e.g. installation scripts)
- **run-tasks**: Script that runs executables in tasks/
- **deploy-configs**: Script that deploys all configuration files to their proper locations

- **env/**: Contains all files to set up the environment and all necessary configs.

## 🚀 Quick Start

1. Clone this repository:

   `git clone https://github.com/jbbenavidesr/dotfiles.git && cd dotfiles`

2. Make scripts executable:

   `chmod +x run-tasks deploy-configs && chmod +x tasks/*`

3. Run setup tasks:

   `./run-tasks`

4. Deploy configuration files:

   `./deploy-configs`

## 📝 How It Works

### Task Execution

The `run-tasks` script automatically discovers and executes all executable scripts in the `tasks/` directory. Each script in this directory is responsible for performing a specific setup task (installing applications, configuring system settings, etc.). By default, the script runs all executables found, but a filter parameter can be added in order to run only scripts that contain the filter in the name. For example, if you run `./run-tasks foo` you'll only run executables that contain `foo` in their name. You can also add the `--dry` flag in order to display which scripts would be run without actually running them.

### Configuration Deployment

The `deploy-env` script handles copying all configuration files to their appropriate locations. The script defines a `copy_dir` and `copy_file` function that can be used to correctly copying new files or directories.

If a file or directory already exists in the target location with that name, it will be deleted. A `--dry` flag can be added to see what would be deleted and then copied without actually doing it.

## ⚙️ Adding New Items

### Adding a New Task

1. Create a new script in `tasks/`
2. Make it executable: `chmod +x tasks/your-script`
3. The script will automatically be included in the task execution process

### Adding New Configuration Files

1. Place files in their appropriate location within `env`.
2. Add the appropriate copying command in `deploy-env` if necessary.
3. Run `./deploy-env` to deploy the new configurations

## ⚠️ Backup

The script should do a backup of the files to remove, but not doing it for the moment.

## 🙏 Credits and Inspiration

The setup in this repository is inspired by the setup explained by [The Primeagen](https://github.com/ThePrimeagen) in the course [My Dev Setup Is Better Than Yours at FrontendMasters](https://frontendmasters.com/courses/developer-productivity-v2/).
