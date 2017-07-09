#lang racket

;
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(length (list 2 1 3 4 6))




































