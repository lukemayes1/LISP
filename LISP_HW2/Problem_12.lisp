#!/usr/local/bin/sbcl --script

;;;; Define a function count, which takes an arbitrary parameter x and 
;;;; returns the number of numeric values (i.e., numbers) contained in x. 

(defun list-count (list)
    (cond
        ((null list) 0)                      ; If not a list return 0
        ((numberp list) 1)                   ; If number return 1 
	((atom list) 0)                      ; If not a number return 0
        (t (+ (list-count (car list))        ; Else +1 and recursively call
              (list-count (cdr list))))))


(format t "The list has ~a values ~%" (list-count '(((1 2) 3) 4)))
