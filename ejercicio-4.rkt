#lang scheme

;;(cubo numero)
;; Calcula el cubo del numero dado
(define (cubo numero)
  (let ((sumado 0))
    (set! sumado (* numero numero))
    (* sumado numero)
  )
)
;;(cubo numero)
;; Recorre la lista y va sumando los cubos
(define (sumar lista suma)
  (cond
    [(= (length lista) 1)
     (set! suma (+ suma  (cubo (car lista))))
     (display suma)
    ]
    [else
     (set! suma (+ suma  (cubo (car lista))))
     (sumar (cdr lista) suma)
    ]
  )
)


(define (sumar-cubos lista)
  (let ((suma 0))
    (sumar lista suma)
  )
)