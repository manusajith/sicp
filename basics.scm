;;;;;;;;;;;;;;;;;;;;;;
; learning basics in lisp
(define (square x) (* x x)) ;square of a no

(define (sum-of-squares x y) (+ (square x) (square y) ) ) ; sum of squares of x nd y (x^2 + y^2)

(define (abs x) (cond ((< x 0) (- x)) (else x))) ; absolute value of x
;;;;;;;;;;;;;;;;;;;;;;;


