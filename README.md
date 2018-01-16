# sha256
use OpenSSL's SHA256 functions to caculate sha256 digest for file or string.


### HOWTO
```bash
$ make
gcc -c  -o sha256.o sha256.c
gcc sha256.o  -lssl -lcrypto  -o sha256
strip sha256

$ ./sha256 filetest.txt hello 12345
File('filetest.txt'): 4a66fe63de0a755b5e04ce0f751276bc7dbf6aa38bf5743a1e1cfeee7fc44b58
String('hello'): 2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824
String('12345'): 5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5
```
