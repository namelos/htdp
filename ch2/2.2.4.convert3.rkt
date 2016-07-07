;; convert3: number -> number -> number -> number
(define (convert3 x y z)
  (+ x
     (* 10 y)
     (* 100 z)))

(= (convert3 1 2 3)
   321)
