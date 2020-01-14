(define (square x) (* x x))
(define (sumsquares x y) (+ (square x) (square y)))
(define (sumsquaresbigger x y z)
    (cond
        ((and (>= x z) (>= y z)) (sumsquares x y))
        ((and (>= x y) (>= z y)) (sumsquares x z))
        ((and (>= y x) (>= z x)) (sumsquares y z))))