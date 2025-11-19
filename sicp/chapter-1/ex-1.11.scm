(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3)))))))


(define (f-iterative n)
  (define (f-iter count n0 n1 n2)
    (cond ((< n 3) n)
    	  ((< n count) n2)
    	  (else (f-iter (+ count 1) n1 n2 (+ n2 (* 2 n1) (* 3 n0))))))
  (f-iter 3 0 1 2))

