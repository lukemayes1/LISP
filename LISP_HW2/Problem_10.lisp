#!/usr/local/bin/sbcl --script

(defun subs (x y z)
    (cond
        ((null y) nil)
        ((eq (car y) (car x)) (subs (cdr x) (cons (car z) (cdr y)) z) )
        ((not (eq (car y) (cons z nil))) (cons (car y) (subs x  (cdr y) z) ))
        (t (subs (cdr x) (cdr y) z))))

(trace subs)
(format t "~%~%~%Output:~a~%" (subs '(1 2) '(1 2 3 4 5) '(5)))
