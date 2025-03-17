# Python 3.7.5 Installation Script

This Bash script automates the installation of Python 3.7.5 on a Ubuntu-based Linux system. It updates the system, installs the required dependencies, and compiles Python from source.

## Features
- Updates the system before installation
- Installs necessary dependencies
- Downloads and compiles Python 3.7.5 from source
- Installs pip for package management

## Usage

### 1. Clone the Repository
```sh
git clone https://github.com/yunusozpolat/Python-3.7.5-Installation-Script.git
cd Python-3.7.5-Installation-Script
```

### 2. Make the Script Executable
```sh
chmod +x install_python3-7-5.sh
```

### 3. Run the Script
```sh
./install_python3-7-5.sh
```

## Script Explanation

The script performs the following steps:

1. **System Update:**
   ```sh
   sudo apt update && sudo apt upgrade -y
   ```
   This updates the package lists and upgrades installed packages to the latest versions.

2. **Installing Dependencies:**
   ```sh
   sudo apt install -y software-properties-common build-essential libffi-dev ...
   ```
   Installs necessary packages for compiling and running Python.

3. **Downloading and Extracting Python 3.7.5:**
   ```sh
   cd /usr/src
   sudo wget https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz
   sudo tar xzf Python-3.7.5.tgz
   ```
   Downloads the official Python 3.7.5 source code and extracts it.

4. **Compiling and Installing Python:**
   ```sh
   cd Python-3.7.5
   sudo ./configure --enable-optimizations
   sudo make -j$(nproc)
   sudo make altinstall
   ```
   Configures, compiles, and installs Python 3.7.5 with optimizations.

5. **Installing pip:**
   ```sh
   sudo apt install -y python3-pip
   python3.7 -m ensurepip
   python3.7 -m pip install --upgrade pip
   ```
   Ensures `pip` is installed and updated for package management.

## Requirements
- Debian-based Linux system (Ubuntu, Debian, etc.)
- sudo privileges
- Internet connection

## Notes
- The script installs Python 3.7.5 as an alternative version without replacing the system’s default Python.
- To check the installed version, run:
  ```sh
  python3.7 --version
  ```
- If `python3.7` is not found, you may need to add it to your system PATH.

## License
This script is open-source and available under the MIT License.

