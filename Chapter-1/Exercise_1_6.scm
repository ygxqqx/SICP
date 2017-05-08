#lang racket

;;
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;;
(define (average x y)
  (/ (+ x y) 2))

;;
(define (improve guess x)
  (average guess (/ x guess)))

;;
(define (square x)
  (* x x))

;;
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;; 为什么会出现 run out of memory 
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
;; new-if是一个函数   正则序  应用序 ？
(sqrt-iter 1.0 9)



