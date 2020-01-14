(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))

(test 0 (p))

;applicative order evaluation
(test 0 (p))
(test 0 (p))
(test 0 (p))
infinitely loop

;normal-order evaluation
(if (= 0 0) 0 (p))
(if #t 0 (p))
0