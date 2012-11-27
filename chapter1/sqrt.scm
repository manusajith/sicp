#  Copyright 2012 Manu S Ajith <neo@codingarena.in>

;find the sqrt of a no using Newtons Method

(define (sqrt-iter guess x) (if (good-enough? guess x) guess
																(sqrt-iter (improve guess x) x) 
                            )
)

(define (improve guess x) (average guess (/ x guess) ))

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))
