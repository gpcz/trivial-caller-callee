(defpackage :trivial-caller-callee/tests
  #+:genera
  (:shadowing-import-from :common-lisp :lambda :simple-string :string)
  (:use #-:genera :cl #+:genera :future-common-lisp :fiveam
        :trivial-caller-callee)
  (:export run!))
