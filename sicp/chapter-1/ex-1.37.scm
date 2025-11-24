(define (cont-frac n d k)
  (define (next-den i) (if (= i k) (d k) (+ (d i) (/ (n (+ i 1)) (next-den (+ i 1))))))
  (/ (n 1) (next-den 1)))
  
  
  (define (cont-frac-iter n d k)
    (define (iter last-den i) (if (= i 1) (/ (n 1) last-den) (iter (+ (d (- i 1)) (/ (n i) last-den)) (- i 1))))
    (iter (d k) k))
  
  
  (cont-frac-iter (lambda (i) 1.0) (lambda (i) 1.0) 11)
