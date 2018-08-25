#lang racket

(exact->inexact (/ 10 3))

(define s "hello word")

(print s)

(define fun (lambda (v) (string-append s v)))

(define (add a b)
  (+ a b))

(define (abs number)
  (if (> number 0) number (- number)))

(fun " ddd")

(abs -2)

(define arr (cons 3 (cons 1 2)))
(car arr)
(cdr arr)

;cons 的简写
(define arr_01 '(1 2 3))
(car arr_01)
(cdr arr_01)

(sort '(7883 9099 6729 2828 7754 4179 5340 2644 2958 2239) <)

(map (lambda (x) (+ x 1)) '(1 2 3 4 5))

(define call/cc call-with-current-continuation)

(* (+ 1 39) (- 53 45))
(+ (/ 1020 39) (exact->inexact (* 45 2)))
(+ 39 48 72 23 91)
(exact->inexact (/ (+ 39 48 72 23 91) 5))

(quote (+ 2 3))
'(+ 2 3)
(cdr '(0))
(car '((1 2 3) (4 5 6)))
(cdr (cons 3 (cons 2 (cons 1 '()))))

(list)
(list '(1 2) '(3 4))

(cons "hi" "everybody")





























