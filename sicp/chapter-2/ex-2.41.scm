(define (accumulate op initial sequence) (if (null? sequence) initial (op (car sequence) (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq) (accumulate append (list) (map proc seq)))

(define (enumerate-interval low high)
  (if (> low high)
      (list)
      (cons low (enumerate-interval (+ low 1) high))))

(define (unique-pairs n)
  (flatmap (lambda (x)
             (map (lambda (j) (list j x)) (enumerate-interval 1 (- x 1))))
           (enumerate-interval 1 n)))

(define (ordered-triples n)
  (flatmap (lambda (x)
             (map (lambda (j) (append j (list x))) (unique-pairs (- x 1))))
           (enumerate-interval 1 n)))

(define (sum-equals? seq s) (= (accumulate + 0 seq) s))

(define (ordered-triples-up-to-n-sums-s n s) (filter (lambda (seq) (sum-equals? seq s)) (ordered-triples n)))
