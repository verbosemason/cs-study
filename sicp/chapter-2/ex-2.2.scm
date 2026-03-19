(define (make-segment p-a p-b) (cons p-a p-b))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (avg a b) (/ (+ a b) 2))

(define (midpoint-segment s) 
  (make-point
    (avg (x-point (start-segment s)) (x-point (end-segment s)))
    (avg (y-point (start-segment s)) (y-point (end-segment s)))))
    
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
