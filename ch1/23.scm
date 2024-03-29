(define (divides? a b) (= (remainder b a) 0))

(define (find-divisor n test-divisor)
    (define (next n)
        (if (= n 2) 3 (+ n 2)))
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))

(define (smallest-divisor n) (find-divisor n 2))

(define (prime? n)
    (= n (smallest-divisor n)))

(define (report-prime n elapsed-time)
    (display n)
    (display " *** ")
    (display elapsed-time)
    (newline))

(define (start-prime-test n start-time)
    (if (prime? n)
        (report-prime n (- (runtime) start-time)) #f))

(define (timed-prime-test n)
    (start-prime-test n (runtime)))

(define (search-for-primes n)
    (define (iter n counter)
        (if (> counter 0)
            (if (timed-prime-test n)
                (iter (+ n 2) (- counter 1))
                (iter (+ n 2) counter))))
    (if (even? n)
        (iter (+ n 1) 3)
        (iter n 3)))

(search-for-primes 1000)
(search-for-primes 10000)
(search-for-primes 100000)
(search-for-primes 1000000)
(search-for-primes 10000000)
(search-for-primes 100000000)
(search-for-primes 1000000000)
(search-for-primes 10000000000)
(search-for-primes 100000000000)
(search-for-primes 1000000000000)
(search-for-primes 10000000000000)