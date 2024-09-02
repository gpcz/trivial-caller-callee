(require 'asdf)

(asdf:initialize-source-registry
  (list
   :source-registry
   (list :tree (merge-pathnames
                "common-lisp"
                (uiop:pathname-parent-directory-pathname
                 (uiop/os:getcwd))))
   :inherit-configuration))

(format t "~S" (asdf:test-system :trivial-caller-callee))
