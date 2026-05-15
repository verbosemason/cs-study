(define (deep-reverse ls)
  (define (iter remaining reverse-ls)
    (cond ((null? remaining) reverse-ls)
    		 ((not (pair? (car remaining))) (iter (cdr remaining) (cons (car remaining) reverse-ls)))
    		 (else (iter (cdr remaining) (cons (deep-reverse (car remaining)) reverse-ls)))))
  (iter ls (list)))
  
