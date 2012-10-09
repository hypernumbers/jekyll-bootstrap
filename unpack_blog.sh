#!/bin/bash
echo "deleting old contents"
rm -rf blog/
mkdir blog/
cd blog/
echo "unzipping and unpacking new contents"
gunzip ../blog.tar.gz
tar -xvf ../blog.tar
# tidy up
rm blog.tar
rm blog/unpack_blog.sh
rm blog/unload.sh
echo "over and out..."