#lang scheme

;;(sumar palabra suma lassoc)
;; Recorre la palabra y le va agregando a la suma el coste de la letra
(define (sumar palabra suma lassoc)
  (cond
    [(= (length palabra) 1)
     (if (assq (car palabra) lassoc)
      (set! suma (+ suma (cdr (assq (car palabra) lassoc)) ))
      #f
     )
     (display suma)
    ]
    [else
     (if (assq (car palabra) lassoc)
      (set! suma (+ suma (cdr (assq (car palabra) lassoc)) ))
      #f
     )
     (sumar (cdr palabra) suma lassoc)
    ]
  )
)

(define (calculo asociacion palabra)
  (define lassoc asociacion)
  (let ((suma 0))
    (sumar palabra suma lassoc)
  )
)