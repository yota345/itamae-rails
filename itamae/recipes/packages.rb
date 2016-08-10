# frozen_string_literal: true

%w( git
    epel-release
    sqlite-devel
    ImageMagick
    ImageMagick-devel
    gcc
    gcc-c++
    patch
    readline
    readline-devel
    zlib
    zlib-devel
    libxml2
    libxml2-devel
    libyaml-devel
    libffi-devel
    libxslt
    libxslt-devel
    openssl-devel
    postgresql-devel
    make
    bzip2
    autoconf
    automake
    libtool
    bison
    curl-devel
    wget
    lsof
    tcl
    vim ).each do |pkg|
  package pkg
end
