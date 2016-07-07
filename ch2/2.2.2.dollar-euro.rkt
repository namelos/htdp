;; dollar->euro number -> number
(define (dollar->euro dollar)
  (* (/ dollar 10)
     9))

(= (dollar->euro 20)
   18)
