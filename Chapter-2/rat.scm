#lang racket


(define (make-rat n d)
  (let ([g (gcd n d)])
    (cons (/ n g) (/ d g))))
;方括号来表示“无动作”的数据 
(define (number x) (car x))
(define (denom x) (cdr x))
(define num (make-rat 3 6))
;(number num)
;(denom num)

(define (print-rat x)
  (newline)
  (display (number x))
  (display "/")
  (display (denom x)))

(print-rat num)













