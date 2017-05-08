#lang racket

;; 条件表达式
;cond(表示条件)
(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        (else 0)))

; if (条件表达式的一种受限的形式 适用于分情况分析中只有两个情况的需要)
(define (abs_ x)
  (if (< x 0)
      (- x)
      x))

;; let 表达式和赋值
;; 说明:let 表达式的赋值只在表达式内部有效。
(let
  ([x 2] [y 6])
  (+ x y))
;; 输出8


;; 用define 和 set! 赋值
;; 语法:(define var exp) , (set! var exp)
;; 说明:define和 set! 表达式的赋值在全局有效。define 和 set! 的区别是define既能赋值又能定义变量,而set!只能对已经定义的变量赋值。
(define a 3)
a           ;; return 3
(set! a 8)
a           ;; return 8
; (set! b 9)  ;; 错误,b尚未定义


;; lambda 表达式和函数定义
;; 语法:(lambda (var ...) exp1 exp2 ...)
;; 说明:lambda 表达式用于定义函数。var ... 是参数,exp1 exp2 ...是函数的执行 部分。通常需要结合局部定义 let 或者全局定义表达式 define,再进行函数调用。
((lambda (x)
   (+ x x))
   8)
;; 说明:先用lambda定义了函数,参数是x,函数返回x+x。同时该语句也完成了函数调用,实参是 8 ,因此返回值是 16 (等于8+8)。





;;
(display "=======================\n")
;; (abs_ -4)














