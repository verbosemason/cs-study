(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ 
                 (/ (* n d) (abs d)) 
                 g)
                 (/ (abs d) g))))
