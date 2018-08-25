#lang racket

(define (make-queue) (mcons '() '()))
(define (front-ptr queue) (mcar queue))
(define (rear-ptr queue) (mcdr queue))
(define (set-front-ptr! queue item) (set-mcar! queue item))
(define (set-rear-ptr! queue item) (set-mcdr! queue item))
(define (empty-queue? queue) (null? (front-ptr queue)))
(define (front-queue queue)
  (if (empty-queue? queue)
      (error "Empty queue: " queue)
      (mcar (front-ptr queue))))
(define (insert-queue! queue item)
  (let ([new-pair (mcons item '())])
    (cond ((empty-queue? queue)
           (set-front-ptr! queue new-pair)
           (set-rear-ptr! queue new-pair)
           queue)
          (else
           (set-mcdr! (rear-ptr queue) new-pair)
           (set-rear-ptr! queue new-pair)
           queue))))
(define (delete-queue! queue)
  (cond ((empty-queue? queue)
         (error "Empty queue: " queue))
         (else
          (set-front-ptr! queue (mcdr (front-ptr queue)))
          queue)))

(define que (make-queue))
(insert-queue! que 2)
(insert-queue! que 12)
(delete-queue! que)
(delete-queue! que)






































