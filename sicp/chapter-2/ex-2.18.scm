(define (reverse ls)
  (define (iter remaining reverse-ls)
    (if (null? remaining) reverse-ls (iter (cdr remaining) (cons (car remaining) reverse-ls))))
  (iter ls (list)))
    
