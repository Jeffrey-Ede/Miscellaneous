#lang racket

; Use recursion to sum the even numbers in the Fibonacci sequece
(define sum_even_Fibonacci
  (lambda (limit [last_term 1] [this_term 2] [sum 2])
    (let ([next_term (+ last_term this_term)])
    (if (> next_term limit)
        sum
        (begin
          (when (even? next_term)
            (set! sum (+ sum next_term)))
          (sum_even_Fibonacci limit this_term next_term sum))))))

; Sum all the Fibonacci numbers less than 4e6
(display (sum_even_Fibonacci 4e6))