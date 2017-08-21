#lang racket
; Sum all the numbers that are multiples of those in the supplied list
(define sum_multiples
  (lambda(numbers [start 1] [end 1000])
  (let ([sum 0] [stop #f])
    (for ([i (in-range start end)])
      (set! stop #f)
      (for ([j numbers])
        #:break stop
        (when (= (modulo i j) 0)
          (set! sum (+ sum i))
          (set! stop #t))))
    sum)))

; Sum multiples of 3 and 5 between from 1 up to, but not including, 1000
(display (sum_multiples '(3 5) 1 1000))