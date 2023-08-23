(define (pascal depth i)
    (cond 
        ((or (< i 0) (> i depth)) 0)
        ((or (= i 0) (= i depth)) 1)
        (else (+
                (pascal (- depth 1) (- i 1))
                (pascal (- depth 1) i)))))

(pp (pascal 4 0))
(pp (pascal 4 1))
(pp (pascal 4 2))
(pp (pascal 4 3))
(pp (pascal 4 4))
