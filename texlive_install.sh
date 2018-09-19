#!/usr/bin/env sh

# Originally from https://github.com/latex3/latex3
# Idea nd slightly changed script from https://tex.stackexchange.com/questions/398830/how-to-build-my-latex-automatically-using-travis-ci
# I've made some changes to the original script

# This script is used for testing using Travis
# It is intended to work on their VM set up: Ubuntu 12.04 LTS
# A minimal current TL is installed adding only the packages that are
# required

# See if there is a cached version of TL available
export PATH=/tmp/Texlive/bin/x86_64-linux:$PATH
if ! command -v texlua > /dev/null; then
  # Obtain TeX Live
  # wget http://mirror.ctan.org/systems/Texlive/tlnet/install-tl-unx.tar.gz
  wget http://mirror.ctan.org/systems/Texlive/tlnet/install-tl-unx.tar.gz
  tar -xzf install-tl-unx.tar.gz
  cd install-tl-20*

  # Install a minimal system
  ./install-tl --profile=../Texlive/Texlive.profile

  cd ..
fi

# Just including texlua so the cache check above works
# Needed for any use of texlua even if not testing LuaTeX
tlmgr install luatex

# Other contrib packages: done as a block to avoid multiple calls to tlmgr
# texlive-latex-base is needed to run pdflatex
tlmgr install   \
  xetex         \
  arara         \
  fontspec      \
  realscripts   \
  fancybox      \
  float         \
  setspace      \
  polyglossia   \
  csquotes      \
  ragged2e      \
  lm                #latin modern fonts

tlmgr install --reinstall --repository https://www.komascript.de/repository/Texlive/2018 koma-script

# Keep no backups (not required, simply makes cache bigger)
tlmgr option -- autobackup 0

# Update the TL install but add nothing new
tlmgr update --self --all --no-auto-install

