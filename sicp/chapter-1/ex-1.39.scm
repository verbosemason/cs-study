(define (cont-frac-iter n d k)
    (define (iter last-den i) (if (= i 1) (/ (n 1) last-den) (iter (+ (d (- i 1)) (/ (n i) last-den)) (- i 1))))
    (iter (d k) k))
    
(define (tan-cf x k)
  (cont-frac-iter (lambda (i) (if (= i 1) x (* -1 (square x)))) (lambda (i) (- (* 2 i) 1)) k))
