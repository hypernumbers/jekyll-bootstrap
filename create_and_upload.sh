#!/bin/bash
# make the site with google analytics
cd /home/gordon/jekyll-blog/
jekyll --safe
# now tar and copy up the site
cd /home/gordon/jekyll-blog/_site
echo "tarring and zipping html"
rm blog.tar.gz
tar -cvf blog.tar *
gzip blog.tar
echo "uploading zipped html"
scp blog.tar.gz gordon@hypernumbers.com:/hn/files-www/vixo2/
cd /home/gordon/jekyll-blog
echo "over and out..."