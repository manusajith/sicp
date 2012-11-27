#  Copyright 2012 Manu S Ajith <neo@codingarena.in>

;Pascals triangle

(define (pascal row col)
  (cond ((= col 1) 1)
        ((= row col) 1)
        (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))
