#!/bin/sh
sudo docker run --rm -i -t -w '/mnt' -v `pwd`:/mnt koep/texlive /bin/bash -c './compile.sh'
