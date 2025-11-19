(define (expmod base expn m)
  (cond ((= expn 0) 1)
        ((even? expn)
         (remainder (square (expmod base (/ expn 2) m)) m))
        (else (remainder (* base (expmod base (- expn 1) m)) m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))


(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n 100 (runtime)))
  
(define (start-prime-test n times start-time)
  (if (fast-prime? n times)
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
  
 
