(define list-1 (list 1 3 (list 5 7) 9))

(define list-2 (list (list 7)))

(define list-3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(define (pick-first-7 ls) (car (cdr (car (cdr (cdr ls))))))

(define (pick-second-7 ls) (car (car ls)))

(define (pick-third-7 ls) (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr ls)))))))))))))
