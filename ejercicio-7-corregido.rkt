#lang scheme

(define (impar f)
  (let ((paridad 0)) 
    (lambda (x) 
      (set! paridad (modulo (+ paridad 1) 2)) 
      (if (= paridad 0)
          x
          (f x))
      ) 
    )
  )

