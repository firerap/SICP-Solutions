#lang scheme

(define a (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))))
(define b (* 3 (- 6 2) (- 2 7)))


(print (/ a b))