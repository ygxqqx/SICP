#lang racket

;; 遍历一棵树的所有叶子

(define (enumerate-tree tree)
  (cond ((null? tree) null)
        ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
                      (enumerate-tree (cdr tree))))))

(enumerate-tree (list 21 (list 4 (list 3 55)) 7 3))




