;; triangle-area: number -> number -> number

(define (triangle-area base height)
  (/ (* base height)
     2))

(= (triangle-area 15 30)
   225)
