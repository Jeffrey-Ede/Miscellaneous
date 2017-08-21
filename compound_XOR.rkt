#lang racket
; Compound XOR logic gate
(define compound_XOR
  ; Default arguments are supplied
  (lambda ([inputs '()] [false_in 0] [tol 0] [true_out 5] [false_out 0])
    
    (define count_ins 0) ; Count number of valid inputs
    (for-each (lambda (input)
                (when (> (abs (- input false_in)) tol)
                    (set! count_ins (add1 count_ins))))
                inputs)
     (if (= count_ins 1) true_out false_out)))

; Get compound XOR logic gate output
(define output (compound_XOR '(0 1.6)))
(display output)