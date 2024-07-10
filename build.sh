#!/usr/bin/bash
repo init -u https://android.googlesource.com/platform/manifest -b master-ndk --partial-clone
repo sync -c -j 8
poetry env use ../prebuilts/python/linux-x86/bin/python3
poetry install
