#lang racket

; 以三个数为参数，返回其中较大的两个数之和
(define (SumMaxTwoNum x y z)
  (cond ((and (> x y) (> x z))
         (if (> y z)
             (+ x y)
             (+ x z)))
        ((and (> y x) (> y z))
         (if (> x z)
             (+ y x)
             (+ y z)))
        ((and (> z x) (> z y))
         (if (> x y)
             (+ z x)
             (+ z y)))))

(SumMaxTwoNum 2 14 6)

