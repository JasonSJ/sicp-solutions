(define (Pascal-Triangle row col)
    (if (or (= row col) (= col 1))
        1
        (+ (Pascal-Triangle (- row 1) (- col 1))
            (Pascal-Triangle (- row 1) col))))