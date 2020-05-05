Machine Learning Course
=======================

My solutions of the assignments for the Andrew Ng's [Machine Learning course on Coursera](https://www.coursera.org/learn/machine-learning).

The Matlab source code of the solution of the assignments has been encrypted to comply with the Coursera Honor's Code 
using OpenSSL and the Advanced Encryption Standard (AES) symmetric cipher with a 256 bits long key in CBC mode. The 
command for the encryption is like in the example

````
  $ openssl enc -e -aes-256-cbc -in octavecode.m -out octavecode.m.enc -pass file:secret

````

where "secret" is the name of the file containing the pass-phrase. Use the next command for decryption

````
  $ openssl enc -d -aes-256-cbc -in octavecode.m.enc -out octavecode.m -pass file:secret

````

