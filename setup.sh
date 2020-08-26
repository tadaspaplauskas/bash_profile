#!/bin/bash
mkdir ~/.sh || exit
git clone --recurse-submodules https://github.com/tadaspaplauskas/shell_profile.git ~/.sh || exit
echo ". ~/.sh/profile" >> ~/.zshrc

