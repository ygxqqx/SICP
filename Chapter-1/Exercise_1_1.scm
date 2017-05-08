#lang racket

9
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b) ; #f

; if 语句 只用于两种情况
(if (and (> b a) (< b (* a b)))
    b
    a)

;cond 语法 cond最后只能有一个else
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

;
(+ 2 (if (> b a) b a))

;;
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))












