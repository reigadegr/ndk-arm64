#!/usr/bin/bash
repo init -u https://android.googlesource.com/platform/manifest -b master-ndk --partial-clone
repo sync -c -j 16
cd ndk
poetry env use ../prebuilts/python/linux-x86/bin/python3
poetry install
