#lang scheme

(define suma 0)

;;(cubo numero)
;; Calcula el cubo del numero dado
(define (cubo numero)
  (let ((sumado 0))
    (set! sumado (* numero numero))
    (* sumado numero)
  )
)

(define (sumar-cubos lista)
  (cond
    [(= (length lista) 1)
     (set! suma (+ suma  (cubo (car lista))))
     (display suma)
     (set! suma 0)
    ]
    [else
     (set! suma (+ suma  (cubo (car lista))))
     (sumar-cubos (cdr lista))
    ]
  )
)
