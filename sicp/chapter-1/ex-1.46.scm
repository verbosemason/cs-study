(define (iterative-improve good-enough? improve-guess)
  (define (iter guess) (if (good-enough? guess) guess (iter (improve-guess guess))))
  (lambda (guess) (iter guess)))
  
(define (average a b) (/ (+ a b) 2))
  
(define (sqr x) ((iterative-improve (lambda (guess) (< (abs (- (square guess) x)) 0.001)) (lambda (guess) (average guess (/ x guess)))) 1.0))

(define (fixed-point  f first-guess) ((iterative-improve (lambda (guess) (< (abs (- guess (f guess))) 0.00001)) f) first-guess))
