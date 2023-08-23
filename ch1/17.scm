(define (halve x) (/ x 2))
(define (double x) (* x 2))

(define (mul a b)
    (cond
        ((= b 0) 0)
        ((even? a) (+ (mul (halve a) (double a))))
        (else (+ a (mul a (- b 1))))))
    

(pp (mul 5 25))