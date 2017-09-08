#!/bin/bash

find $BUDDYBUILD_PRODUCT_DIR \
    -name "*.dSYM" \
    -print \
    -exec $BUDDYBUILD_WORKSPACE/Pods/Fabric/upload-symbols \
    -a $FABRIC_API_KEY \
    -p ios {} \;
