#lang scheme

;;(status 1)
;;Lleva la cuenta de si se perdio el equilibrio
(define status 1)

;;(lizq lista)
;;Obtiene el hijo izquierdo del arbol en caso de corresponder
(define (lizq lista)
  (if (null? (cdr lista))
      '()
      (car (cdr lista))
      )
  )

;;(lder lista)
;;Obtiene el hijo derecho del arbol en caso de corresponder
(define (lder lista)
  (cond ((null? (cdr lista)) (cdr lista))
        ((null? (cdr (cdr lista))) (cdr (cdr lista)))
        (else (car (cdr (cdr lista))))
        )
  )

(define pesomovil
  (lambda (lista)
    (if (null? lista)
        0
        (let pesos ((izq 0) (der 0) (head 0) (i 0))
          (cond ((= status 0) '())
                ((= i 0) (pesos
                          (pesomovil (lizq lista))
                          (pesomovil (lder lista))
                          (car lista)
                          (+ i 1)
                          ))
                ((not (= izq der)) (set! status 0))
                ((= i 1) (+ head izq der))
                )
          )
        )
    )
  )