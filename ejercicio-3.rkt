#lang scheme

(define (lizq lista)
  (if (null? (cdr lista))
      '()
      (car (cdr lista))
   )
  )

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
          (cond ((= i 0) (pesos
               (pesomovil (lizq lista))
               (pesomovil (lder lista))
               (car lista)
               (+ i 1)
               ))
                ((not (= izq der)) '())
                ((= i 1) (+ head izq der))
              )
          )
        )
    )
  )