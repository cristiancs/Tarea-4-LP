#lang scheme

(define goferkcola
  (lambda (n)
    (if (= n 0)
        0
        (let ferkcola ((i 2) (a1 1) (a0 0))
          (if (= i (+ n 1))
              a1
              (ferkcola (+ i 1) (+ i (- a1 a0)) a1)
              )
          )
        )
    )
  )

(define (goferkiter n)
  (cond ((= n 0) 0)
        (else
         (do ( (i 2 (+ i 1))
               (a0 0 (+ a1 0))
               (a1 1 (+ i (- a1 a0)))
               )
           ((= i (+ n 1)) a1)
           )
         )
        )
  )

