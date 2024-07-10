#!/usr/bin/bash
repo init -u https://android.googlesource.com/platform/manifest -b master-ndk --partial-clone
repo sync -c -j 16

for dir in prebuilts/clang/host/*; do
    local here=$(realpath .)
    cd dir
    git checkout main
    git pull
    cd $here
done

cd ndk
poetry env use ../prebuilts/python/linux-x86/bin/python3
poetry install
python checkbuild.py
