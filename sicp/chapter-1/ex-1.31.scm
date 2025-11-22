(define (product term a next b)
  (if (> a b)
       1
       (* (term a) (product term (next a) next b)))) 
       
       
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
         result
         (iter (next a) (* (term a) result))))
  (iter a 1))
  
  
(define (pi-prod b)
  (define (pi-term x) (/ (* 2.0 x) (+ (* 2 x) 1)))
    (define (pi-next x) (+ x 1))
    (* 2 (+ b 2) (square (product-iter pi-term 1 pi-next (+  (/ b 2) (remainder b 2))))))
    
