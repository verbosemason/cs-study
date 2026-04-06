(define (make-interval a b) (cons a b))
(define (upper-bound x) (cdr x))
(define (lower-bound x) (car x))

(define (make-center-percent c p)
  (make-interval (* c (- 1 (/ p 100.0))) (* c (+ 1 (/ p 100.0)))))
  
(define (percent i)
  (* 100 (- (/ (upper-bound i) (/ (+ (upper-bound i) (lower-bound i)) 2.0)) 1)))
