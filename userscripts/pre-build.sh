# https://github.com/lineageos4microg/docker-lineage-cicd/search?q=userscripts
#!/bin/sh
set -e
cd device/motorola/potter && patch -p1 < /srv/userscripts/add-ant-to-mk-files.patch
