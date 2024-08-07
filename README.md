### Intro

> This is a script for compiling and installing `GDAL` on `Ubuntu` (with potential support for other Linux distributions in the future), supporting most drivers.

> The compilation process takes approximately fifteen to forty minutes depending on computer performance and network speed

### Usage

> Download the script:
```shell
git clone https://github.com/yancy-hong/compile-gdal.git &&
cd compile-gdal/gdal-3.9.1
```

> Give script permissions:
```shell
chmod -rwx compile-gdal3.9.1-ubuntu18.04.sh
```

> Execute the script in two ways (since it involves environment variables in `~/.bashrc`, avoid using bash or `./` directly):
```shell
. compile-gdal3.9.1-ubuntu18.04.sh # Notice the dot . before the script name  
# or  
source compile-gdal3.9.1-ubuntu18.04.sh
```

### Tutorial(Only Chinese)
> [CSDN link](https://blog.csdn.net/m0_53928179/article/details/140827578?spm=1001.2014.3001.5502)