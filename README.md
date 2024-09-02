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

## Notes

This system does not ensure consistency of output between implementations.
You may get more output on implementations that can detect closures or
other types of calls.