(define (make-mobile left right) (list left right))
(define (make-branch length structure) (list length structure))


(define (left-branch mobile) (car mobile))
(define (right-branch mobile) (car (cdr mobile)))

(define (branch-length branch) (car branch))
(define (branch-structure branch) (car (cdr branch)))

(define (branch-weight branch)
     (let ((bs-b (branch-structure branch)))
             (cond ((pair? bs-b) (total-weight bs-b))
                          (else bs-b))))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile)) (branch-weight (right-branch mobile))))
  
(define (is-balanced? mobile)
   (define (branch-torque branch) 
      (* (branch-length branch) (branch-weight branch)))
   (let ((bs-l (branch-structure (left-branch mobile))) (bs-r (branch-structure (right-branch mobile))))
           (and (= (branch-torque (left-branch mobile)) (branch-torque (right-branch mobile)))
                      (or (not (pair? bs-l)) (is-balanced? bs-l))
                      (or (not (pair? bs-r)) (is-balanced? bs-r)))))
                      
        
        
        
(define (make-mobile-alt left right) (cons left right))
(define (make-branch-alt length structure) (cons length structure))

(define (right-branch mobile) (cdr mobile))
(define (branch-structure branch) (cdr branch))
  
