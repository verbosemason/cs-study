(define (make-vect x y) (cons x y))

(define (make-segment v1 v2) (cons v1 v2))

(define (start-segment s) (car s))

(define (end-segment s) (cdr s))

(define outline-painter (segments->painter (list
                                              (make-segment (make-vect 0 0) (make-vect 0 1))
                                              (make-segment (make-vect 0 1) (make-vect 1 1))
                                              (make-segment (make-vect 1 1) (make-vect 1 0))
                                              (make-segment (make-vect 1 0) (make-vect 0 0)))))
(define x-painter (segments->painter (list
                                        (make-segment (make-vect 0 0) (make-vect 1 1))
                                        (make-segment (make-vect 1 0) (make-vect 0 1)))))

(define diamond-painter (segments->painter (list
                                              (make-segment (make-vect (/ 1 2) 0) (make-vect 0 (/ 1 2)))
                                              (make-segment (make-vect 0 (/ 1 2)) (make-vect (/ 1 2) 1))
                                              (make-segment (make-vect (/ 1 2) 1) (make-vect 1 (/ 1 2)))
                                              (make-segment (make-vect 1 (/ 1 2)) (make-vect (/ 1 2) 0)))))

(define wave-painter (segments->painter (list
                                         (make-segment (make-vect 0 (/ 16 19)) (make-vect (/ 3 19) (/ 12 19)))
                                         (make-segment (make-vect (/ 3 19) (/ 12 19)) (make-vect (/ 6 19) (/ 13 19)))
                                         (make-segment (make-vect (/ 6 19) (/ 13 19)) (make-vect (/ 8 19) (/ 13 19)))
                                         (make-segment (make-vect (/ 8 19) (/ 13 19)) (make-vect (/ 7 19) (/ 16 19)))
                                         (make-segment (make-vect (/ 7 19) (/ 16 19)) (make-vect (/ 8 19) 1))
                                         (make-segment (make-vect (/ 11 19) 1) (make-vect (/ 12 19) (/ 16 19)))
                                         (make-segment (make-vect (/ 12 19) (/ 16 19)) (make-vect (/ 11 19) (/ 13 19)))
                                         (make-segment (make-vect (/ 11 19) (/ 13 19)) (make-vect (/ 13 19) (/ 13 19)))
                                         (make-segment (make-vect (/ 13 19) (/ 13 19)) (make-vect 1 (/ 7 19)))
                                         (make-segment (make-vect 1 (/ 3 19)) (make-vect (/ 11 19) (/ 9 19)))
                                         (make-segment (make-vect (/ 11 19) (/ 9 19)) (make-vect (/ 14 19) 0))
                                         (make-segment (make-vect (/ 11 19) 0) (make-vect (/ 1 2) (/ 6 19)))
                                         (make-segment (make-vect (/ 1 2) (/ 6 19)) (make-vect (/ 8 19) 0))
                                         (make-segment (make-vect (/ 5 19) 0) (make-vect (/ 7 19) (/ 10 19)))
                                         (make-segment (make-vect (/ 7 19) (/ 10 19)) (make-vect (/ 6 19) (/ 12 19)))
                                         (make-segment (make-vect (/ 6 19) (/ 12 19)) (make-vect (/ 3 19) (/ 8 19)))
                                         (make-segment (make-vect (/ 3 19) (/ 8 19)) (make-vect 0 (/ 13 19))))))
