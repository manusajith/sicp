
(define (double n) (+ n n))

(define (iterative-mult a b)
   (define (loop a b x)
    (cond ((zero? a) x)
          ((even? a) (loop (/ a 2) (double b) x))
          (else (loop (- a 1) b (+ b x)))))
   (loop a b 0))
