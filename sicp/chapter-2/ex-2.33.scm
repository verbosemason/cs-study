(define (accumulate op initial sequence) (if (null? sequence) initial (op (car sequence) (accumulate op initial (cdr sequence)))))

(define (map-seq p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) (list) sequence))

(define (append-seq seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length-seq sequence) (accumulate (lambda (x y) (+ 1 y)) 0 sequence))
