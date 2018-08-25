#lang racket

(define (accumulate op initial sequence)
  (cond ((null? sequence) initial)
        ((op (car sequence) (accumulate op initial (cdr sequence))))))



(accumulate + 1 (list 1 2 3 4 5))
(accumulate + 0 (list 1 2 3))
(accumulate * 1 (list 1 2 3 4 5))
(accumulate cons null (list 1 2 3 4 5))











