#!/usr/local/bin/sbcl --script

(defun replace2 (list x)
    (cond
        ((null list) nil)
        ((not (eq (car list) (cons x nil))) (cons (car x) (replace2 (cdr list) x) ))
        (t (replace2 (cdr list) x))))


(trace replace2)
(format t "~%~%~%Output:~a~%" (replace2 '(1 2 3 4 5 6 7 8 9 10) '(1)))
