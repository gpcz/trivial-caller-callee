# cl-uniquifier
Produces a function that will return a new simple unique symbol for every symbol or string that is introduced.  Good for generating files that require simple names for things, code obfuscation, etc.

To load:
```
(asdf:operate 'asdf:load-op 'cl-uniqifier)
```

To test:
```
(asdf:operate 'asdf:test-op 'cl-uniqifier)
```