#lang scheme

;;(reemplazar a b list)
;;Busca un valor en la lista y lo reemplaza con el nuevo valor, devuelve una lista con el valor reemplazado
(define (reemplazar a b list)
 (cond
  [(null? list) '()]
  [(list? (car list)) (cons (reemplazar a b (car list)) (reemplazar a b (cdr list)))]
  [(eq? (car list) a) (cons b (reemplazar a b (cdr list)))]
  [else
   (cons (car list) (reemplazar a b (cdr list)))
  ]
 )
)

(define (logiceval list)
  (let ((list list))
    (set! list (reemplazar 'Y 'and list))
    (set! list (reemplazar 'O 'or list))
    (set! list (reemplazar 'OEX 'xor list))
    (set! list (reemplazar 'NO 'not list))
    (eval list)
  )
)