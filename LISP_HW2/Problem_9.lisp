#!/usr/local/bin/sbcl --script

;;;; Write a function Map that takes two parameters, a function f, and an arbitrary value y. 
;;;; The Map function then returns the result of invoking f to modify each element contained inside y.




(defun increment (x)
    (+ x 1))


(defun map2 (f y)
(cond
    ((null y) nil)
    ((not (listp y)) (funcall f 'y))
    (t (cons (car y) (map2f f (cdr y)))))            
)


(map2 + '(1))




