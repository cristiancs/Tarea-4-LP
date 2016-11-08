#lang scheme


;;(aux1 N lista)
;;Realiza el ordenamiento n veces (n inicial = tamanio lista)
(define (aux1 N lista)    
    (cond [(= N 1) (bubblesort lista)]  
          [else (aux1 (- N 1) (bubblesort lista))]
     )
)
;;(bubblesort lista)
;;recursivamente ordena los items en la lista
(define (bubblesort lista)
    (if (null? (cdr lista))   
        lista
        (if (< (car lista) (cadr lista))   
            (cons (car lista) (bubblesort (cdr lista)))   
            (cons (cadr lista) (bubblesort (cons (car lista) (cddr lista))))
        )
    )
)

;;(ordenar lista)
;;LLama a la funcion auxiliar con el tamanio de la lista
(define (ordenar lista) 
    (aux1 (length lista) lista))


(define (merge lista1 lista2)
  (let ((listafinal (list)))
    (set! listafinal (append lista1 lista2))
    (ordenar listafinal)
  )
)