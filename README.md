### Intro

> This is a script for compiling and installing GDAL on Ubuntu (with potential support for other Linux distributions in the future), supporting most drivers.

### Usage

> Download the script:
```shell
wget https://github.com/yancy-hong/compile-gdal/tree/master/gdal-3.9.1/compile-gdal3.9.1-ubuntu18.04.sh
# or
git clone https://github.com/yancy-hong/compile-gdal.git
cd gdal-3.9.1
```

> Execute the script in two ways (since it involves environment variables in ~/.bashrc, avoid using bash or ./ directly):
```shell
. compile-gdal3.9.1-ubuntu18.04.sh # Notice the dot . before the script name  
# or  
source compile-gdal3.9.1-ubuntu18.04.sh
```