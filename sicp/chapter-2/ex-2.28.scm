(define (fringe tree)
  (define (iter subtree ls)
    (cond ((null? subtree) ls)
    		  ((not (pair? (car subtree))) (iter (cdr subtree) (append ls (list (car subtree)))))
    		  (else (append (fringe (car subtree)) (iter (cdr subtree) ls)))))
 (iter tree (list)))
 
 
 (define (fringe tree)
   (cond ((null? tree) tree)
       		((not (pair? tree)) (list tree))
       		(else (append (fringe (car tree)) (fringe (cdr tree))))))
