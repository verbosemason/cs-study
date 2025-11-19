(define (sum-of-square-of-two-larger-numbers a b c)
  (+ (square (if (or (> a b) (> a c)) a c)) (square (if (or (> b a) (> b c) (= b a)) b c))))
(define (square x) (* x x))
