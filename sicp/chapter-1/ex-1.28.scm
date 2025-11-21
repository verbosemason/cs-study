(define (expmod base expn m)
  (define (signal n) 
    (define remainder-square (remainder (square n) m))
    (cond ((or (= n 1) (= n (- m 1))) remainder-square)
                  ((= 1 remainder-square) 0)
                  (else remainder-square)))
    
  (cond ((= expn 0) 1)
        ((even? expn)
         (signal (expmod base (/ expn 2) m)))
        (else (remainder (* base (expmod base (- expn 1) m)) m))))
        
        
(define (miller-rabin-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (try-it (+ 1 (random (- n 1)))))
  
  (define (fast-prime? n times)
    (cond ((= times 0) true)
                 ((miller-rabin-test n) (fast-prime? n (- times 1)))
                 (else false)))
