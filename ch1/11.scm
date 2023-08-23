(define (f-recursive n)
    (if (< n 3)
        n
        (+ (f-recursive (- n 1))
           (* 2 (f-recursive (- n 2)))
           (* 3 (f-recursive (- n 3))))))

(define (f-iterative n)
    (define (f-iter a b c count)
        (if (= count 0)
            c
            (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))
    (if (< n 3) n (f-iter 0 1 2 (- n 2))))

(pp (f-recursive 1))
(pp (f-iterative 1))
(pp (f-recursive 4))
(pp (f-iterative 4))