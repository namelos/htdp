;; square : number -> number
(define (square x)
  (* x x))

(= (square 2)
   4)

(= (square -3)
   9)

;; x^2 + 2*x + 1 = 0

;; when x = -1
;; = (-1)^2 + 2*(-1) + 1
;; = 1 - 2 + 1
;; = 0
;; passed

;; when x = 1
;; = 1^2 + 2*1 + 1
;; = 1 + 2 + 1
;; = 4
;; failed

;; equation1 : number -> boolean
(define (equation1 x)
  (= (+ (square x)
        (* 2 x)
        1)
     0))

(eq? (equation1 -1)
     #t)

(eq? (equation1 1)
     #f)

;; 4*n + 2 = 62
(define (equation2 x)
  (= (+ (* 4 x)
        2)
     62))

(equation2 10)
(equation2 12)
(equation2 14)

(equation2 15)

;; 2*n^2 = 102
(define (equation3 x)
  (= (* 2
        (square x))
     102))

(equation3 10)
(equation3 12)
(equation3 14)

;; 4*n^2 + 6*n + 2 = 462

(define (equation4 x)
  (= (+ (* 4
           (square x))
        (* 6 x)
        2)
     462))

(equation4 10)
(equation4 12)
(equation4 14)

