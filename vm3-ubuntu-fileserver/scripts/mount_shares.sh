#!/bin/bash

mount -t cifs //files01/shared /mnt/shared \
-o sec=krb5,vers=3.0
