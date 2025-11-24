(define (cont-frac-iter n d k)
  (define (iter last-den i) (if (= i 1) (/ (n 1) last-den) (iter (+ (d (- i 1)) (/ (n i) last-den)) (- i 1))))
    (iter (d k) k))
  
  
(+ 2 (cont-frac-iter (lambda (i) 1.0) (lambda (i) (if (= 0 (remainder (- i 2) 3)) (* 2 (+ 1 (/ (- i 2) 3))) 1)) 10))
