#  Copyright 2012 Manu S Ajith <neo@codingarena.in>

;using recursion
(define (f1 n)
  (if (< n 3) n
      (+ (f1 (- n 1))
      (* 2 (f1 (- n 2)))
      (* 3 (f1 (- n 3))) )))


;using iteration
(define (f2 n)
(define (iteration i a b c)
    (if (= n i)
        a
        (iteration (+ 1 i) (+ a (* 2 b) (* 3 c)) a b)))
  (if (< n 3)
      n
      (iteration 3 4 2 1)))
