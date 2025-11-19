(define (next n) (if (= n 2) 3 (+ n 2)))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))
        
        
(define (divides? a b) (= (remainder b a) 0))

(define (prime? n) (= n (smallest-divisor n)))


(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
  
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time)) 0))
      
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  1)
  
  
(define (next-odd n) (if (even? n) (+ n 1) n))

(define (search-for-primes init)
  (define (search-for-primes-iter n count)
    (cond ((= count 0) 0)
          (else (search-for-primes-iter (+ n 2) (- count (if (= (timed-prime-test n) 1) 1 0))))))
  (search-for-primes-iter (next-odd init) 3))
  
