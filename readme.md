# Usage

## Load library
```
(load "bcrypt.l")
```

## Generate hash
Use the `generate-hash` method
```
: (bcrypt~generate-hash 5 "Secret")
-> "$2b$05$xGVeqJGU728knKkN6Hoyiee/kTO6WhG5UcsEcTI8txyP2hZUhVR16"
```

## Compare password with hash
Use the `compare-with-hash` method
```
: (bcrypt~compare-with-hash "Secret" "$2b$05$xGVeqJGU728knKkN6Hoyiee/kTO6WhG5UcsEcTI8txyP2hZUhVR16")
-> T
```

