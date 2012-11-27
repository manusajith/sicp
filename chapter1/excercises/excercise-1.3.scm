#  Copyright 2012 Manu S Ajith <neo@codingarena.in>

(define (sum-of-squares a b) (+ (* a a) (* b b))) ; sum of squares (a^2 + b^2)
  
(define (sum-of-squares-of-two-largest a b c) (cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
																										((<= a b) (sum-of-squares a b)) 
																							      (else (sum-of-squares a c)))) 
