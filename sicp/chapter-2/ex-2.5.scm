(define (cons a b) (* (expt 2 a) (expt 3 b)))

(define (power-of n k) (if (= (remainder n k) 0) (+ 1 (power-of (/ n k) k)) 0))

(define (car n) (power-of n 2))
(define (cdr n) (power-of n 3))
