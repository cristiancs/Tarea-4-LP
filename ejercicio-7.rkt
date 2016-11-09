#lang scheme

;;(paridad 0)
;;Lleva la cuenta de la paridad actual
(define paridad 0)

;;(duplicar x)
;;Calcula el doble de un numero, si se ha llamado un numero impar de veces
(define duplicar
  (lambda (x)
    (set! paridad (modulo (+ paridad 1) 2))
    (if (= (modulo paridad 2) 0)
        x
        (* x 2)
     )
    )
  )