#lang scheme

(define (sum-square a b)
  (+
   (* a a)
   (* b b)))

(define (sum-3 a b c) 
   (cond ((and (>= b c) (>= a c)) (sum-square a b)); c is smallest
         ((and (>= c b) (>= a b)) (sum-square a c)); b is smallest
         (else (sum-square c b))); a is smallest
  )

;; should be 5*5 + 3*3 = 34
(format "~A" (sum-3 3 2 5))
(format "~A" (sum-3 2 3 5))
(format "~A" (sum-3 5 2 3))