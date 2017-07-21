#!/bin/bash -x

DICTIONARY_FILE=brotli.dic

wget https://tools.ietf.org/rfc/rfc7932.txt 
sed -ne '/[0-9a-f]\{64\}/p' rfc7932.txt | cut -c 7- | sed -e 's/\(..\)/\\\\x\1/g' | xargs -n1 printf > "$DICTIONARY_FILE"

CRC32=$(python << EOS
import binascii
with open('$DICTIONARY_FILE', 'r') as f:
  print("%x" % binascii.crc32(f.read()))
EOS
)

ls -lh "$DICTIONARY_FILE"

test $CRC32 = '5136cb04' && echo "checksum ok"

