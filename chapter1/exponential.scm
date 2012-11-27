#  Copyright 2012 Manu S Ajith <neo@codingarena.in>

;using recursion
(define (expt b n)
(if (= n 0)
1
(* b (expt b (- n 1)))))

;using iteration
(define (expt b n)
(expt-iter b n 1))
(define (expt-iter b counter product)
(if (= counter 0)
product
(expt-iter b
(- counter 1)
(* b product))))
