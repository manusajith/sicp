#  Copyright 2012 Manu S Ajith <neo@codingarena.in>

(define (A x y)
	(cond ((= y 0)
				((= x 0)
				((= y 1)
				(else (A 0)
							(* 2 y))
							2)
							(- x 1)		
				(A x (- y 1))))))

;
(A 1 10)
 (A 0 (A 1 9))
  (A 0 (A 0 (A 1 8)))
  ...
  (A 0 (A 0 (A 0 128)))
  (A 0 (A 0 256))
  (A 0 512)
  1024
