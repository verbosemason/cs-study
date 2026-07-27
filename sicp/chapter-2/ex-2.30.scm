(define (direct-square-tree tree)
  (cond ((null? tree) tree)
        ((not (pair? tree)) (square tree))
        (else (cons (direct-square-tree (car tree)) (direct-square-tree (cdr tree))))))

(define (square-tree tree)
  (map (lambda (subtree) (if (pair? subtree) (square-tree subtree) (square subtree))) tree))
