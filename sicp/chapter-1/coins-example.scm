(define (int-division a b)
  (define (int-division-iter c) (if (> (* b c) a) (- c 1) (int-division-iter (+ c 1))))
  (int-division-iter 1))
  

(define (cc amount)
  (define max-steps (int-division amount 5))
  (define init-acc2 (+ (int-division max-steps 2) 1))
  (define (cc-iterative count acc2 acc5 s2 s2-5 s5 current-multiplier step)
    (cond ((< step 0) count)
          (else (cc-iterative 
                   (+ count (* current-multiplier acc2))
                   (- acc2 s2)
                   (+ acc5 (if (= s5 5) s2-5 0))
                   (if (= s2 0) 1 0)
                   (if (= s2-5 0) 1 0)
                   (if (= s5 5) 1 (+ s5 1))
                   (+ current-multiplier (if (= s5 5) acc5 0))
                   (- step 1)))))
  (cc-iterative
    0
    init-acc2
    1
    (if (= (* 2 init-acc2) (+ max-steps 2)) 1 0)
    1
    1
    1
    max-steps))
  
  

      	    
            
  
  
  

