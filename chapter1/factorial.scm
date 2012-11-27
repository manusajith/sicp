#  Copyright 2012 Manu S Ajith <neo@codingarena.in>

(define (factorial n)
	(if (= n 1)
				1
			(* n (factorial (- n 1)))))

;another method for factorial
(define (factorial n)
	(fact-iter 1 1 n))

(define (fact-iter product counter max-count)
	(if (> counter max-count)
				product
			(fact-iter (* counter product)
	(+ counter 1)
	max-count)))
