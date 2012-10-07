#!/bin/bash
cd /home/gordon/jekyll-blog/_site
echo "tarring and zipping html"
rm blog.tar.gz
tar -cvf blog.tar *
gzip blog.tar
echo "uploading zipped html"
scp blog.tar.gz gordon@hypernumbers.com:/hn/files-www/vixo2/
cd /home/gordon/jekyll-blog
echo "over and out..."