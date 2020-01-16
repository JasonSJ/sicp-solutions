(define (fast-multi a b)
    (define (double x) (+ x x))
    (define (halve x) (/ x 2))
    (define (iter product a b)
        (cond ((= b 0) product)
            ((even? b) (iter product (double a) (halve b)))
            (else (iter (+ product a) a (- b 1)))))
    (iter 0 a b))




(fast-multi 10 411)