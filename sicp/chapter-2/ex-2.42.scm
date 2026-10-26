(define (enumerate-interval low high)
  (if (> low high)
      (list)
      (cons low (enumerate-interval (+ low 1) high))))

(define (last-element ls)
  (if (pair? (cdr ls)) (last-element (cdr ls)) (car ls)))

(define (safe? k positions)
  (let ((kth-pos (last-element positions)))
  (define (safe-iter i rem-positions)
    (or (= i k)
        (and
         (not (= (car rem-positions) kth-pos))
         (not (= (abs (- kth-pos (car rem-positions))) (- k i)))
         (safe-iter (+ i 1) (cdr rem-positions))
         )))
  (safe-iter 1 positions)))

(define (adjoin-position row pos rest)
  (append rest (list row)))

(define empty-board (list))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))
