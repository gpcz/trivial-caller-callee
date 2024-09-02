(in-package :trivial-caller-callee)
#+:sbcl (require :sb-introspect)

(defun get-function-callers-worker (the-function-symbol)
  #+:sbcl (sb-introspect:find-function-callers (symbol-function the-function-symbol))
  #+:ccl (ccl::callers the-function-symbol)
  #+:allegro (xref:get-relation :calls :wild the-function-symbol)
  #-(or sbcl ccl allegro) (error "Library does not support your implementation"))

(defun my-symbol-function (something)
  (cond
    ((functionp something) something)
    (t (symbol-function something))))

(defun get-function-callers (the-function-symbol)
  "Given function THE-FUNCTION, return all functions that call
   the-function."
  (mapcar #'my-symbol-function
          (get-function-callers-worker the-function-symbol)))

(defun get-function-callees (the-function)
  "Given function THE-FUNCTION, return all functions that
   the-function calls."
  #+:sbcl (sb-introspect:find-function-callees the-function)
  #-(or sbcl) (error "Library does not support your implementation"))
