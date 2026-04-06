(define (append-item list1 item) (if (null? list1) (list item) (cons (car list1) (append-item (cdr list1) item))))

(define (same-parity first . rest)
  (define (iter filtered remaining)
    (if (null? remaining)
          filtered
          (iter (if (even? (+ first (car remaining))) (append-item filtered (car remaining)) filtered) (cdr remaining))))
  (iter (list first) rest))
