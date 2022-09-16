#!/usr/local/bin/sbcl --script

;;;; Define in Lisp a function Find which takes two 
;;;; parameters, x and y. It returns x if x appears 
;;;; in y, and returns an empty list otherwise.

(defun findval1 (x y)
    (cond
        ((not (null y)) x)
        ((= x nil) (format t "RETURN EMPTY~%"))
        ((not (eq (car x) (car y))) (findval x (cdr y)))
        (t (eq (car x) (car y)) (findval (cdr x) (cdr y)))  ))

(trace findval1)
(format t "~%~%~%Output: ~a~%" (findval1 '(9 8 7) '(9 8 7)))
