(in-package :trivial-caller-callee/tests)

(setf fiveam:*debug-on-error* t)
(setf fiveam:*debug-on-failure* t)
(fiveam:def-suite caller-callee-tests
  :description "Tests basic caller-callee functionality.")
(fiveam:in-suite caller-callee-tests)

(defun b ()
  (declare (optimize (debug 3) (safety 3) (speed 0) (space 0)))
  (+ 1 2))

(defun a ()
  (declare (optimize (debug 3) (safety 3) (speed 0) (space 0)))
  (+ 1 (b)))

(fiveam:test caller-tests
  (fiveam:is (find 'a (trivial-caller-callee:get-function-callers 'b))))

(fiveam:test callee-tests
  #+:sbcl (fiveam:is (equal (list #'b)
                    (trivial-caller-callee:get-function-callees #'a)))
  #+:sbcl (fiveam:is (equal nil (trivial-caller-callee:get-function-callees #'b))))

(defun run-test-suite ()
  "Runs the test suite(s) for caller-callee."
  (fiveam:run! 'caller-callee-tests))
