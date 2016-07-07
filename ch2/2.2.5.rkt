;; f: number -> number
(define (f n)
  (+ (/ n 3) 2))

(= (f 2)
   8/3)

(= (f 5)
   11/3)

(= (f 9)
   5)

;; g: number -> number
(define (g n)
  (+ (* n n)
     10))

(= (g 2)
   14)

(= (g 9)
   91)

;; h: number -> number
(define (h n)
  (+ (* (/ 1 2)
        (* n n))
     20))

(= (h 2)
   22)

(= (h 9)
   121/2)

;; i: number -> number
(define (i n)
  (- 2
     (/ 1 n)))

(= (i 2)
   3/2)

(= (i 9)
   17/9)
