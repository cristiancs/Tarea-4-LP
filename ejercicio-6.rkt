#lang scheme

;;(factorial n)
;;Calcula el fatorial de un numero
(define factorial
  (lambda (n)
    (let fact ((i n))
      (if (= i 0)
          1
          (* i (fact (- i 1)))
          )
      )
    )
  )

(define (binomsimple x y n)
  (let binom ((exp n))
    (if (= exp 0)
        1
        (* (+ x y) (binom (- exp 1)))
        )
    )
  )

(define binomcola
  (lambda (x y n)
    (if (= n 0)
        1
        (let sum ((arg 0)(k n))
          (if (= k -1)
              arg
              (sum (+ arg ( * (/ (factorial n) (* (factorial k) (factorial (- n k))))
                          (* (expt x (- n k)) (expt y k)) )
                      )
                   (- k 1)
                   )
              )
          )
        )
    )
  )