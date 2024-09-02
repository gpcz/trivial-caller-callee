(defsystem "trivial-caller-callee"
  :author "Greg Czerniak"
  :description "Abstracts Common Lisp implementation-specific
                functions for getting the callers and callees
                of functions."
  :license "MIT"
  :version "1.0.0"
  :depends-on (#+:sbcl sb-introspect)
  :pathname "src/"
  :components
  ((:file "package")
   (:file "caller-callee" :depends-on ("package")))
  :in-order-to ((test-op (test-op "trivial-caller-callee/tests"))))

(defsystem "trivial-caller-callee/tests"
  :author "Greg Czerniak"
  :description "Tests the functionality of trivial-caller-callee"
  :license "MIT"
  :pathname "tests/"
  :depends-on ("trivial-caller-callee" "fiveam")
  :components ((:file "package")
               (:file "caller-callee-tests" :depends-on ("package")))
  :perform (test-op (o c) (symbol-call :trivial-caller-callee/tests :run-test-suite)))
