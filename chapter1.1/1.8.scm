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
    (< (abs (- (* guess guess guess) x)) 0.001))
;define improve
(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
;define sqrt-iter
(define (cuber-iter guess x)
    (if (good-enough? guess x)
        guess
        (cuber-iter (improve guess x) x)))
;define sqrt
(define (cuber x)
    (cuber-iter 1.0 x))

(sqrt 1000)