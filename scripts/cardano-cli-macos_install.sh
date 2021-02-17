#!/bin/bash

export TMP_CARDANO_PATH=$(mktemp -d)
echo $TMP_CARDANO_PATH
curl -s https://hydra.iohk.io/build/5577872/download/1/cardano-node-1.25.0-macos.tar.gz | \
    tar -v -C ${TMP_CARDANO_PATH} -xzf - \
    cardano-cli \
    libcharset.1.dylib \
    libffi.7.dylib \
    libgmp.10.dylib \
    libiconv-nocharset.dylib \
    libiconv.dylib \
    libsodium.23.dylib \
    libz.dylib