#lang scheme

;;(paridad 0)
;;Lleva la cuenta de la paridad actual
(define paridad 0)

;;(duplicar x)
;;Calcula el doble de un numero, si se ha llamado un numero impar de veces
(define (duplicar x)
  (define (impar n)
    (set! paridad (modulo (+ paridad 1) 2))
    (if (= (modulo paridad 2) 0)
        n
        (* n 2)
        )
    )
  (impar x)
  )