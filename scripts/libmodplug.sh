test_deps_install zlib

LIBMODPLUG_VERSION=0.8.9.0

download_and_extract http://deb.debian.org/debian/pool/main/libm/libmodplug/libmodplug_$LIBMODPLUG_VERSION.orig.tar.gz libmodplug-$LIBMODPLUG_VERSION
apply_patch libmodplug-$LIBMODPLUG_VERSION-PSP
run_configure
run_make -j `num_cpus`
