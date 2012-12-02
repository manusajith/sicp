(define (double n) (+ n n))

(define (mult a b)
  (cond ((zero? a) 0)
        ((even? a) (mult (/ a 2) (double b)))
        (else (+ b (mult (- a 1) b))) ))
