#lang scheme

(define (mymap func)
  (lambda (lista)
    (if (null? lista) '()
        (if (list? (car lista))
            (cons ((mymap func) (car lista)) ((mymap func) (cdr lista)))
            (cons (func (car lista)) ((mymap func) (cdr lista)))
            )
        )
    )
  )