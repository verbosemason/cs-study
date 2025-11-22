(define (filtered-accumulate filter combiner null-value term a next b)
  (if (> a b)
       null-value
       (combiner (if (filter a) (term a) null-value) (filtered-accumulate filter combiner null-value term (next a) next b))))
       
       
 (define (filtered-accumulate-iter filter combiner null-value term a next b)
   (define (iter a result)
     (if (> a b)
          result
          (iter (next a) (combiner (if (filter a) (term a) null-value) result))))
  (iter a null-value))
  
  
  (define (inc n) (+ n 1))
  
(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
        
(define (divides? a b) (= (remainder b a) 0))

(define (prime? n) (= n (smallest-divisor n)))
  
(define (sum-of-squares-prime a b) (filtered-accumulate prime? + 0 square a inc b))

(define (identity x) x)

(define (product-of-relatively-primes n) 
  (define (relatively-prime? i) (= (gcd i n) 1))
  (filtered-accumulate relatively-prime? * 1 identity 1 inc n))


