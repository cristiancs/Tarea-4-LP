#lang scheme

(define paridad 0)

(define (impar f)
  (lambda (x)
    (set! paridad (modulo (+ paridad 1) 2))
    (if (= (modulo paridad 2) 0)
        x
        (f x)
        )
    )
  )