#lang racket

;; 计算叶子节点
(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))


(count-leaves (cons (list 1 3 4) (list 3 6)))


