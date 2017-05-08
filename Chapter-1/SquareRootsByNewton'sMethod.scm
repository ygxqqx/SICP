#lang racket

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


;; 牛顿法求平方根
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

;; 初始的猜测值为 1.0
(define (sqrt x)
  (sqrt-iter 1.0 x))


(display "======================\n")
(sqrt 9)

