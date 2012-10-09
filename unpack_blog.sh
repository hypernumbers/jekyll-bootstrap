#!/bin/bash
echo "deleting old contents"
rm -rf blog/
mkdir blog/
cd blog/
echo "unzipping and unpacking new contents"
gunzip ../blog.tar.gz
tar -xvf ../blog.tar
# tidy up
cd ../
rm blog.tar
echo "over and out..."