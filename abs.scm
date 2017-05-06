#lang racket
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (abs_ x)
  (cond ((< x 0 ) (- x))
        ((= x 0) 0)
        (else x)))

(abs_ -10)

