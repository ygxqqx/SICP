#lang racket

;; 牛顿法求平方根
;; 初始的猜测值为 1.0
(define (sqrt x)
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
  ;;
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))

;;
(sqrt 9)

(display "======================\n")

;; 菲波那切数列
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
;;
(factorial 6)
(display "======================\n")


;;可以将计算阶乘n!的规则描述为：先乘起1和2，而后得到的结果乘以3，而后再乘以4
;; 要维持一个变动中的乘积product, 以及一个从一到n的计数器counter
(define (fact_iter product counter max-count)
  (if (> counter max-count)
      product
      (fact_iter (* product counter) (+ counter 1) max-count)))
;;
(define (factorial_ n)
  (fact_iter 1 1 n))
;;
(factorial_ 6)

(display "======================\n")

;;
(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

;;
(define (fib n)
  (fib-iter 1 0 n))

;;
(fib 3)

(let ([x 1]
      [y 2])
  (+ x y))






















