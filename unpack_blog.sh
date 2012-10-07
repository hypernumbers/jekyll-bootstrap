#!/bin/bash
echo "deleting old contents"
rm -rf *
echo "unzipping and unpacking new contents"
gunzip ../blog.gz
tar -xvf blog.tar
echo "over and out..."