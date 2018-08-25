#lang racket

;(define (cons x y)
;  (define (dispatch m)
;    (cond ((eq? m 'car) x)
;          ((eq? m 'cdr) y)
;          (else (error "Undefined!"))))
;  dispatch)

;(define (car z) (z 'car))
;(define (cdr z) (z 'cdr))

;(define exp (cons 23 44))
;(car exp)
;(cdr exp)

;; =========================================

(define (cons x y)
  (define (set-x! v) (set! x v))
  (define (set-y! v) (set! y v))
  (define (dispatch m)
    (cond ((eq? m 'car) x)
          ((eq? m 'cdr) y)
          ((eq? m 'set-car!) set-x!)
          ((eq? m 'set-cdr!) set-y!)
          (else (error "Undefined: " m))))
  dispatch)

(define (car z) (z 'car))
(define (cdr z) (z 'cdr))

(define (set-car! z x) ((z 'set-car!) x) z)
(define (set-cdr! z y) ((z 'set-cdr!) y) z)

(define exp (cons 11 22))
(car exp)
(cdr exp)
(set-car! exp 33)
(car exp)





























