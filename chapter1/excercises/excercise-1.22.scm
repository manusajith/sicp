;given
(define (timed-prime-test n)
(newline)
(display n)
(start-prime-test n (runtime)))
(define (start-prime-test n start-time)
(if (prime? n)
(report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
(display " *** ")
(display elapsed-time))

;from previous code
(define (divides? a b)
  (= (remainder b a) 0))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (prime-check n count times)
  (cond ((zero? count) times)
        (else
         (let ((time-result (timed-prime-test n)))
           (if time-result
               (prime-check (+ n 1) (- count 1) (+ time-result times))
               (prime-check (+ n 1) count times)))) ))

(define (find-primes starting)
  (/ (prime-check starting 3 0) 3.0))
