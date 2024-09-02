(defpackage :trivial-caller-callee
  #+:genera
  (:shadowing-import-from :common-lisp :lambda :simple-string :string)
  (:use #-:genera :cl #+:genera :future-common-lisp)
  (:export get-function-callers
           get-function-callees))
