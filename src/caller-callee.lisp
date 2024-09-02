(in-package :trivial-caller-callee)
#+:sbcl (require :sb-introspect)

(defun get-function-callers (the-function-symbol)
  "Given function THE-FUNCTION, return all functions that call
   the-function."
  #+:sbcl (sb-introspect:find-function-callers (symbol-function the-function-symbol))
  #+:ccl (ccl::callers the-function-symbol)
  #+:allegro (xref:who-calls the-function-symbol)
  #-(or sbcl ccl allegro) (error "Library does not support your implementation"))

(defun get-function-callees (the-function)
  "Given function THE-FUNCTION, return all functions that
   the-function calls."
  #+:sbcl (sb-introspect:find-function-callees the-function)
  #-(or sbcl) (error "Library does not support your implementation"))
