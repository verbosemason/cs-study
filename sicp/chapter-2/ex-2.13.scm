(define (make-interval a b) (cons a b))
(define (upper-bound x) (cdr x))
(define (lower-bound x) (car x))

(define (make-center-percent c p)
  (make-interval (* c (- 1 (/ p 100.0))) (* c (+ 1 (/ p 100.0)))))
  
(define (center i) (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (percent i)
  (* 100 (- (/ (upper-bound i) (/ (+ (upper-bound i) (lower-bound i)) 2.0)) 1)))
  
(define (approx-prod x y) (make-center-percent (* (center x) (center y)) (+ (percent x) (percent y))))
