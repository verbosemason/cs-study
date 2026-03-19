(define (make-rect s1 s2) (cons s1 s2))
(define (make-segment p-a p-b) (cons p-a p-b))
(define (side-a rect) (car rect))
(define (side-b rect) (cdr rect))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))


(define (seg-length s)
  (sqrt (+
    (square (- (x-point (start-segment s)) (x-point (end-segment s))))
    (square (- (y-point (start-segment s)) (y-point (end-segment s)))))))
    
    
    
(define (area-rect rect) (* (seg-length (side-a rect)) (seg-length (side-b rect))))
(define (perimeter-rect rect) (* 2 (+ (seg-length (side-a rect)) (seg-length (side-b rect)))))


(define (make-rect p v1 v2) (cons p (cons v1 v2)))

(define (side-a rect) (make-segment (car rect) (make-point (+ (x-point (car rect)) (x-point (car (cdr rect)))) (+ (y-point (car rect)) (y-point (car (cdr rect)))))))
(define (side-b rect) (make-segment (car rect) (make-point (+ (x-point (car rect)) (x-point (cdr (cdr rect)))) (+ (y-point (car rect)) (y-point (cdr (cdr rect)))))))
