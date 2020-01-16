(define (fast-multi a b)
    (define (double x) (+ x x))
    (define (halve x) (/ x 2))
    (define (iter product a b counter)
        (cond ((= counter 0) product)
            ((even? b) (iter product (double a) (halve b) (halve b)))
            (else (iter (+ product a) a b (- counter 1)))))
    (iter 0 a b b))




(fast-multi 3 4)