![example workflow](https://github.com/gpcz/trivial-caller-callee/actions/workflows/testsbcl.yml/badge.svg)
![example workflow](https://github.com/gpcz/trivial-caller-callee/actions/workflows/testccl.yml/badge.svg)
![example workflow](https://github.com/gpcz/trivial-caller-callee/actions/workflows/testallegro.yml/badge.svg)

# trivial-caller-callee

Wrapper functions to get callers/callees of functions in different Common Lisp
implementations.

Currently supports:
* Steel Bank Common Lisp (caller + callee)
* Clozure Common Lisp (caller)
* Allegro Common Lisp (caller)

## Loading

To load:
```
(asdf:operate 'asdf:load-op 'trivial-caller-callee)
```

To test:
```
(asdf:operate 'asdf:test-op 'trivial-caller-callee)
```

## Example
```
CL-USER> (defun b () (+ 1 2))
B
CL-USER> (defun a () (+ 1 (b)))
A
CL-USER> (trivial-caller-callee:get-function-callers 'b)
(#'A)
```

## Notes

This system does not ensure consistency of output between implementations.
You may get more output on implementations that can detect closures or
other types of calls.