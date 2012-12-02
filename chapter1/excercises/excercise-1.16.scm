(define (square n) (* n n))

;; This is the original recursive version defined in the book.
(define (fast-exp b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

;; 
(define (iterative-fast-exp b n)
  (define (loop b n a)
    (cond ((zero? n) a)
          ((even? n) (loop (square b) (/ n 2) a))
          (else (loop b (- n 1) (* b a)))))
  (loop b n 1))
