#!acl11.0express.64/alisp --I alisp.dxl -#!
(require 'asdf)

(asdf:initialize-source-registry
  (list
   :source-registry
   (list :tree (merge-pathnames
                "common-lisp"
                (uiop:pathname-parent-directory-pathname
                 (uiop/os:getcwd))))
   :inherit-configuration))

(asdf:test-system :trivial-caller-callee)
