#lang scheme


(define (compresor lst)
  (let ((letter (car lst))
   (cond
    [(= (length lst) 1) (car lst)]
    [else (max (car lst) (compresor (cdr lst)))]
    )
  )
 )
    
)