(define (f row n)
  (if (or (= n 1) (= row n)) 1 
      (+ (f (- row 1) n) (f (- row 1) (- n 1)))))
