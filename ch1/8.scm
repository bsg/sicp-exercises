(define (cube-root x) 
    (define (good-enough? guess) 
        (= (improve guess) guess))
    (define (improve guess)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    (define (cube-root-iter guess)
        (if (good-enough? guess)
            guess
            (cube-root-iter (improve guess))))
    (cube-root-iter 1.0))

(pp (cube-root 9))