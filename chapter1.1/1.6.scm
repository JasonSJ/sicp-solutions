;define square
(define (square x)
    (* x x))
;define abs
(define (abs x)
    (if (< x 0)
        (- x)
        x))
;define good-enough
(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
;define average
(define (average x y)
    (/
        (+ x y)
        2))
;define improve
(define (improve guess x)
    (average guess (/ x guess)))
;define new-if
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))
;define sqrt-iter
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
;define sqrt
(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 9)