(define (expt b n) 
    (define (iter b n a)
        (cond 
            ((= n 0) a)
            ((even? n) (iter (* b b) (/ n 2) a))
            (else (iter b (- n 1) (* a b)))))
    (iter b n 1))


(pp (expt 2 8))