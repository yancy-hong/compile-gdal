#!/bin/bash

# Ubuntu    18.04-LTS
# CMake     3.30.1
# gcc       10.3.0
# PROJ      9.4.1
# SQLite    3.46.0
# SWIG      4.2.1
# Java      1.8
# FileGDB   1.5.2
# GDAL      3.9.1

set -e

echo "export JAVA_HOME=/gdal391_compiler/soft/java-se-8u41-ri" >> ~/.bashrc && source ~/.bashrc &&
echo "export ANT_HOME=/gdal391_compiler/soft/apache-ant-1.10.14" >> ~/.bashrc && source ~/.bashrc &&
echo "export PATH=$ANT_HOME/bin:$JAVA_HOME/bin:$PATH" >> ~/.bashrc && source ~/.bashrc &&
echo "export LD_LIBRARY_PATH=/usr/local/pgsql/lib/:/usr/lib:/usr/local/lib:/usr/local/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc &&
source ~/.bashrc

sudo add-apt-repository -y ppa:ubuntugis/ppa &&
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test &&
sudo add-apt-repository -y ppa:git-core/ppa &&
sudo apt update && sudo apt upgrade -y

sudo apt install -y \
autotools-dev binutils binutils-common binutils-x86-64-linux-gnu build-essential \
cpp cpp-7 default-libmysqlclient-dev dpkg-dev fakeroot fontconfig-config \
fonts-dejavu-core g++ g++-7 gcc gcc-7 gcc-7-base gdal-bin gdal-data \
gir1.2-harfbuzz-0.0 hdf5-helpers icu-devtools libaec-dev libaec0 \
libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl \
libarmadillo-dev libarmadillo8 libarpack2 libarpack2-dev libasan4 libatomic1 \
libbinutils libblas-dev libblas3 libboost-dev libboost1.65-dev libc-dev-bin \
libc6-dev libcc1-0 libcilkrts5 libcurl4-gnutls-dev libdap-dev libdap25 libdapclient6v5 \
libdapserver7v5 libdpkg-perl libepsilon-dev libepsilon1 libexpat1-dev libfakeroot \
libfile-fcntllock-perl libfontconfig1 libfreexl-dev libfreexl1 libfyba-dev libfyba0 \
libgcc-7-dev libgdal-dev libgdal20 libgeos-3.6.2 libgeos-c1v5 libgeos-dev libgeotiff-dev \
libgeotiff2 libgfortran4 libgif-dev libgif7 libglib2.0-bin libglib2.0-dev libglib2.0-dev-bin \
libgomp1 libgraphite2-3 libgraphite2-dev libharfbuzz-dev libharfbuzz-gobject0 libharfbuzz-icu0 \
libharfbuzz0b libhdf4-0-alt libhdf4-alt-dev libhdf5-100 libhdf5-cpp-100 libhdf5-dev libicu-dev \
libicu-le-hb-dev libicu-le-hb0 libiculx60 libisl19 libitm1 libjbig-dev libjbig0 libjpeg-dev \
libjpeg-turbo8 libjpeg-turbo8-dev libjpeg8 libjpeg8-dev libjson-c-dev libkml-dev libkmlbase1 \
libkmlconvenience1 libkmldom1 libkmlengine1 libkmlregionator1 libkmlxsd1 liblapack-dev \
liblapack3 liblcms2-2 liblsan0 libltdl-dev libltdl7 liblzma-dev libminizip-dev libminizip1 \
libmpc3 libmpx2 libmysqlclient-dev libmysqlclient20 libnetcdf-dev libnetcdf13 libnspr4 \
libnss3 unixodbc-dev libopenjp2-7 libopenjp2-7-dev libpcre16-3 \
libpcre3-dev libpcre32-3 libpcrecpp0v5 libpng-dev libpng-tools libpoppler-dev \
libpoppler-private-dev libpoppler73 libpq-dev libpq5 libqhull-dev libqhull-r7 libqhull7 \
libquadmath0 libspatialite-dev libspatialite7 zlib1g-dev binutils-doc cpp-doc gcc-7-locales \
debian-keyring g++-multilib g++-7-multilib gcc-7-doc libstdc++6-7-dbg gcc-multilib autoconf \
automake flex bison gdb gcc-doc gcc-7-multilib libgcc1-dbg libgomp1-dbg libitm1-dbg \
libatomic1-dbg libasan4-dbg liblsan0-dbg libtsan0-dbg libubsan0-dbg libcilkrts5-dbg \
libmpx2-dbg libquadmath0-dbg libgdal-grass python-gdal libitpp-dev liblapack-doc libboost-doc \
libboost1.65-doc libboost-atomic1.65-dev libboost-chrono1.65-dev libboost-container1.65-dev \
libboost-context1.65-dev libboost-coroutine1.65-dev libboost-date-time1.65-dev \
libboost-exception1.65-dev libboost-fiber1.65-dev libboost-filesystem1.65-dev libboost-graph1.65-dev \
libboost-graph-parallel1.65-dev libboost-iostreams1.65-dev libboost-locale1.65-dev libboost-log1.65-dev \
libboost-math1.65-dev libboost-mpi1.65-dev libboost-mpi-python1.65-dev libboost-numpy1.65-dev \
libboost-program-options1.65-dev libboost-python1.65-dev libboost-random1.65-dev \
libboost-regex1.65-dev libboost-serialization1.65-dev libboost-signals1.65-dev \
libboost-stacktrace1.65-dev libboost-system1.65-dev libboost-test1.65-dev libboost-thread1.65-dev \
libboost-timer1.65-dev libboost-type-erasure1.65-dev libboost-wave1.65-dev libboost1.65-tools-dev \
libmpfrc++-dev libntl-dev glibc-doc libcurl4-doc libgnutls28-dev libidn11-dev libkrb5-dev \
libldap2-dev librtmp-dev libssh2-1-dev bzr libgdal-doc libgeotiff-epsg geotiff-bin libglib2.0-doc \
libgraphite2-utils libhdf4-doc hdf4-tools libhdf5-doc icu-doc liblcms2-utils libtool-doc \
liblzma-doc netcdf-bin netcdf-doc odbc-postgresql tdsodbc unixodbc-bin ogdi-bin \
libfreetype6-dev postgresql-doc-10 sqlite3-doc libstdc++-7-doc libsuperlu-doc \
automake=1:1.15.1-3ubuntu2 gfortran libogdi-dev libogdi4.1 libxml2-dev libprotobuf-dev protobuf-compiler &&
apt remove -y libproj-dev libproj13 proj-bin proj-data libsqlite3-0 libsqlite3-dev sqlite3 \
sqlite3-doc && apt autoremove -y &&
apt install -y netplan git libtiff-dev libcrypto++-dev m4 flex \
libpcre2-dev libreadline-dev
# 在卸载旧的proj或sqlite时，可能会连同netplan也卸载，如果被卸载了，重新安装即可。
# 此外，目前我只发现了netplan被卸载了，其他尚未可知，如果其他命令被卸载了，重新安装即可。
# When uninstalling old versions of proj or sqlite, it's possible that netplan
# might also be uninstalled along with them. If netplan is uninstalled, simply reinstall it.
# Furthermore, at present, I have only noticed that netplan has been uninstalled.
# As for other potential uninstallations, if any other commands or packages are found to be missing,
# simply reinstall them as well.

sudo apt install -y gcc-10 g++-10 &&
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 &&
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 100 &&
sudo update-alternatives --config gcc &&
sudo update-alternatives --config g++

mkdir -p /gdal391_compiler/packages /gdal391_compiler/soft/ /gdal391_compiler/libs && 
cd /gdal391_compiler/libs &&
git clone https://github.com/curl/curl.git curl-8_9_1 &&
git clone https://github.com/json-c/json-c.git json-c-0.17-20230812 &&
mkdir googletest && cd googletest && git clone https://github.com/google/googletest.git v1.15.2

cd /gdal391_compiler/packages &&
wget https://github.com/Kitware/CMake/releases/download/v3.30.1/cmake-3.30.1.tar.gz &&
wget https://download.osgeo.org/proj/proj-9.4.1.tar.gz &&
wget https://www.sqlite.org/2024/sqlite-autoconf-3460000.tar.gz &&
wget https://nchc.dl.sourceforge.net/project/swig/swig/swig-4.2.1/swig-4.2.1.tar.gz?viasf=1 &&
wget https://github.com/Esri/file-geodatabase-api/raw/master/FileGDB_API_1.5.2/FileGDB_API-RHEL7-64gcc83.tar.gz &&
wget https://github.com/OSGeo/gdal/releases/download/v3.9.1/gdal-3.9.1.tar.gz && 
wget https://ftp.gnu.org/gnu/bison/bison-3.8.2.tar.gz && 
wget https://ftp.postgresql.org/pub/source/v16.3/postgresql-16.3.tar.gz &&
wget https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz &&
wget https://downloads.apache.org/ant/binaries/apache-ant-1.10.14-bin.tar.gz &&
mv swig-4.2.1.tar.gz\?viasf\=1 swig-4.2.1.tar.gz && tar -zxvf cmake-3.30.1.tar.gz -C ../soft/ &&
tar -zxvf FileGDB_API-RHEL7-64gcc83.tar.gz -C ../soft/ && tar -zxvf gdal-3.9.1.tar.gz -C ../soft/ &&
tar -zxvf proj-9.4.1.tar.gz -C ../soft/ && tar -zxvf sqlite-autoconf-3460000.tar.gz -C ../soft/ &&
tar -zxvf swig-4.2.1.tar.gz -C ../soft/ && tar -zxvf bison-3.8.2.tar.gz -C ../soft/ &&
tar -zxvf postgresql-16.3.tar.gz -C ../soft/ &&
tar -zxvf openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz -C ../soft/ &&
tar -zxvf apache-ant-1.10.14-bin.tar.gz -C ../soft/

cd /gdal391_compiler/soft/cmake-3.30.1/ && ./configure && make -j16 && make install
cd /gdal391_compiler/soft/sqlite-autoconf-3460000 && ./configure && make -j16 && make install
cd /gdal391_compiler/libs/curl-8_9_1 && mkdir build && cd build && cmake .. && cmake --build . && cmake --build . --target install
cd /gdal391_compiler/libs/googletest/v1.15.2 && mkdir build && cd build && cmake .. && cmake --build . && cmake --build . --target install
cd /gdal391_compiler/soft/proj-9.4.1 && mkdir build && cd build && cmake .. && cmake --build . && cmake --build . --target install
cd /gdal391_compiler/soft/bison-3.8.2/ && ./configure && make -j16 && make install
cd /gdal391_compiler/soft/swig-4.2.1 && mkdir build && cd build && cmake .. && cmake --build .&& cmake --build . --target install
cd /gdal391_compiler/soft/FileGDB_API-RHEL7-64gcc83 && rm lib/libstdc++.* && cp lib/* /usr/lib/ && cp include/* /usr/include/
cd /gdal391_compiler/soft/postgresql-16.3 && sudo apt -y install libicu-dev && ./configure && make -j16 && make install
cd /gdal391_compiler/libs/json-c-0.17-20230812 && mkdir build && cd build && cmake .. && cmake --build . && cmake --build . --target install

cd /gdal391_compiler/soft/gdal-3.9.1 && mkdir build && cd build &&
cmake -DFileGDB_INCLUDE_DIR=/usr/include/ -DPostgreSQL_LIBRARY=/usr/local/pgsql/lib/libpq.so \
-DPostgreSQL_INCLUDE_DIR=/usr/local/pgsql/include/ -DCMAKE_BUILD_TYPE=Release \
-DJSON-C_INCLUDE_DIR=/usr/local/json-c-0.15/include \
-DJSON-C_LIBRARY=/usr/local/json-c-0.15/lib/libjson-c.so .. && cmake --build . && cmake --build . --target install

gdalinfo --formats
gdalinfo --version
