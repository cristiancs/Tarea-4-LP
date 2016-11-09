#lang scheme

;;(paridad 0)
;;Lleva la cuenta de la paridad actual
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