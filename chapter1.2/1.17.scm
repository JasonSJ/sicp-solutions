(define (fast-multi a b)
    (define (double x) (* x 2))
    (define (halve x) (/ x 2))
    (cond ((= b 0) 0)
        ((even? b) (double (fast-multi a (halve b))))
        (else (+ a (fast-multi a (- b 1))))))


(fast-multi 16 5)