(define (square n) (* n n))
(define (max a b) (if (> a b) a b))
(define (ex1.3 a b c) 
    (+ (square (max a b)) (square (max b c))))

(pp (ex1.3 3 1 2))
