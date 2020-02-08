#!/bin/bash
mkdir ~/.shell || exit
git clone --recurse-submodules https://github.com/tadaspaplauskas/shell_profile.git ~/.sh || exit
echo ". ~/.shell/profile" >> ~/.zshrc

