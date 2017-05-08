#lang racket

;; 牛顿法求X立方根




;; 将cube 需要用到的函数 定义到cube函数的内部
(define (cube x)
  ;;
  (define (square a)
    (* a a))
  ;;
  (define (average a b)
    (/ (+ a b) 3))
  ;;
  (define (improve guess x)
    (average (/ x (square guess)) (* 2 guess)))
  ;;
  (define (good-enough? guess x)
    (< (abs (- x (* guess guess guess))) 0.001))
  ;;
  (define (cube-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-iter (improve guess x) x)))
  ;;
  (cube-iter 1.0 x))

;;
(cube 27)




