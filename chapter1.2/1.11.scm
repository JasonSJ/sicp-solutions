;recursive process
(define (recursive-f n)
    (if (< n 3)
        n
        (+  (recursive-f (- n 1))
            (* 2 (recursive-f (- n 2)))
            (* 3 (recursive-f (- n 3))))))

;iterative process
(define (iterative-f n)
    (define (iter a b c counter)
        (if (< counter 0)
            a
            (iter (+ a (* 2 b) (* 3 c)) a b (- counter 1))))
    (if (< n 3)
        n
        (iter 2 1 0 (- n 3))))