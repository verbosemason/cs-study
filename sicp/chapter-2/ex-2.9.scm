(define (make-interval a b) (cons a b))

(define (upper-bound x) (cdr x))
(define (lower-bound x) (car x))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
            (p2 (* (lower-bound x) (upper-bound y)))
            (p3 (* (upper-bound x) (lower-bound y)))
            (p4 (* (upper-bound x) (upper-bound y))))
(make-interval (min p1 p2 p3 p4) (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval x (make-interval (/ 1.0 (upper-bound y)) (/ 1.0 (lower-bound y)))))

(define (width x) (/ (- (upper-bound x) (lower-bound x)) 2.0))

(define interval-a (make-interval 1 2))
(define interval-b (make-interval 2 3))

(width (mul-interval interval-a interval-a))
(width (mul-interval interval-b interval-b))

(width (div-interval interval-a interval-a))
(width (div-interval interval-b interval-b))





