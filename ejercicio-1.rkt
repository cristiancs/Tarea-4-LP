#lang scheme

(define x 0)
(define lista (list))
(define temporal(list))
(define mostrar #t)

(define (compresor lst)
  (cond
    [(= (length lst) 1)
     (set! x (+ 1 x))
     
     (cond
       [(equal? #t mostrar)
        (set! lista (append lista (list (list x (car lst)))))
        (display lista)
        (set! lista (list))
       ]
       [else
       ; (display temporal)
        (set! temporal (append temporal (list (list x (car lst)))))
        (set! lista (append lista (list temporal)))
       ]
     )
     (set! x 0)
     
    ]
    [(list? (cadr lst) )
     (set! x (+ 1 x))
     (set! lista (append lista (list (list x (car lst)))))
     (set! x 0)
     (set! mostrar #f)
     (compresor (cadr lst))
     (set! mostrar #t)
     (compresor (cddr lst))
    ]
    [(= (car lst) (car(cdr lst) ) )
     (set! x (+ 1 x))
     (compresor (cdr lst))
     ]
    [else
     (set! x (+ 1 x))
     (cond
       [(equal? #t mostrar)
        (set! lista (append lista (list (list x (car lst)))))
       ]
       [else #f
        (set! temporal (append temporal (list (list x (car lst)))))
       ]
     )
     
     (set! x 0)
     (compresor (cdr lst))
    ]
  )
)