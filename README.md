# get-brotli-dictionary
[Brotli](https://github.com/google/brotli) is an excellent open source data compression library. (see [Wikipedia](https://en.wikipedia.org/wiki/Brotli))
It is very good ratio for web object compression with using the embedded pre-defined 120 kilobyte dictionary derived from a large corpus.

This repository is stored a simple tool to extract the dictionary from [RFC 7932](https://tools.ietf.org/html/rfc7932) and the extracted dictionary binary file.

## dictionary license
The dictionary file is under "Simplified BSD License".

Copyright (c) 2016 IETF Trust, J. Alakuijala and Z. Szabadka All rights reserved.

Copyright (c) <insert year> IETF Trust and the persons identified as authors of the code. All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
Neither the name of Internet Society, IETF or IETF Trust, nor the names of specific contributors, may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


## usage example
[Zstandard](https://github.com/facebook/zstd) is also an excellent open source data compression library what compress/decompress fastly.
It can use an external pre-defined dictionary.

```
$ wget github.com
$ zstd -19 index.html
index.html           : 23.66%   ( 56770 =>  13434 bytes, index.html.zst)
$ zstd -19 -D brotli.dic index.html
index.html           : 22.00%   ( 56770 =>  12492 bytes, index.html.zst) 
$ # FYI
$ bro --input index.html | wc -c
11552
$ gzip -c index.html | wc -c
14049
```

