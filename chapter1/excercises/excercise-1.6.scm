#  Copyright 2012 Manu S Ajith <neo@codingarena.in>

;new if 
(define (new-if predicate then-clause else-clause) (cond (predicate then-clause) 
																												 (else else-clause)))

(define (sqrt-iter guess x) (new-if (good-enough? guess x) guess
																		(sqrt-iter (improve guess x) x)))

;will end in an infinite loop
