(define (average a b) (/ (+ a b) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))
  
(define (compose f g) (lambda (x) (f (g x))))

(define (repeated f n) 
  (if (= n 1) f (compose f (repeated f (- n 1)))))
  
  
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display guess)
     (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
            next
            (try next))))
  (try first-guess))
  
  
(define (avg-damp-k n) (if (< n 4) 1 (+ 1 (avg-damp-k (/ n 2)))))
  
(define (nth-root x n) (fixed-point ((repeated average-damp (avg-damp-k n)) (lambda (y) (/ x (expt y (- n 1))))) 1.0))
