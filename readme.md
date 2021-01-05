# Summary

Picolisp wrapper for the bcrypt library (blowfishhashing algorithm only at the moment).

# Get bcrypt

Run the included `compile` script.

# Usage

## Load library
```
(load "bcrypt.l")
```
The path to the bcrypt library is set with `bcrypt~*Lib`, defaults to `./bcrypt.so`.

## Generate hash
Use the `generate-hash` method:
```
: (bcrypt~generate-hash 5 "Secret")
-> "$2b$05$xGVeqJGU728knKkN6Hoyiee/kTO6WhG5UcsEcTI8txyP2hZUhVR16"
```
It requires the number of iterations for the algorithm. As a rule of thumb it should be the highest number that achieves the hashing in less than a second.

## Compare password with hash
Use the `compare-with-hash` method:
```
: (bcrypt~compare-with-hash "Secret" "$2b$05$xGVeqJGU728knKkN6Hoyiee/kTO6WhG5UcsEcTI8txyP2hZUhVR16")
-> T
```
```
: (bcrypt~compare-with-hash "WrongSecret" "$2b$05$xGVeqJGU728knKkN6Hoyiee/kTO6WhG5UcsEcTI8txyP2hZUhVR16")
-> NIL
```


