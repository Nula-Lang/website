#!/bin/bash
echo ":RUN: Downloading binaries"
curl -L -o /tmp/nula https://github.com/Nula-Lang/nula/releases/download/v0.1/nula
curl -L -o /tmp/nula-compiler https://github.com/Nula-Lang/nula/releases/download/v0.1/nula-compiler
curl -L -o /tmp/nula-backend https://github.com/Nula-Lang/nula/releases/download/v0.1/nula-backend
curl -L -o /tmp/nula-library.appimage https://github.com/Nula-Lang/nula/releases/download/v0.1/nula-library.appimage
echo ":RUN: Move binares"
cd ~
sudo mkdir .nula
cd .nula
sudo mkdir lib
cd ~
sudo mv /tmp/nula-library.appimage ~/.nula/lib/
sudo mv /tmp/nula-backend ~/.nula/lib/
sudo mv /tmp/nula-compiler ~/.nula/lib/
sudo mv /tmp/nula ~/.nula/lib/
echo ":DONE: Operation Complete"
