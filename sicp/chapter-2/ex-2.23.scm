(define (for-each-alt proc items) (cond ((null? items) true)
									(else (proc (car items))
									(for-each-alt proc (cdr items)))))
