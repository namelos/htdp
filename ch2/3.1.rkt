;; profit : number -> number
;; substraction of income and outcome
(define (profit ticket-price)
  ...)

;; revenue : number -> number
;; calculate income from ticket price
(define (revenue ticket-price)
  ..)

;; cost : number -> number
;; calculate outcome from ticket price
(define (cost ticket-price)
  ..)

;; attendees : number -> number
;; calculate TF
(define (attendees ticket-price)
  ..)

;; when tp = 5, 120 = p
;; when lower 0.1$, p + 15,
;; while 180$ cost and 0.04$/p

;; 1. profit is subustraction of income and outcome
;; 2. income is p * tp
;; 3. outcomes are consist of include 180$ cost 0.04$/p
;; 4. relations between p and tp

;; 3.1.1
;; given 3 / 4 / 5, calc p

(define (attendees ticket-price)
  (+ 120
     (* (- 5 ticket-price)
        150)))

(= (attendees 5)
   120)
(= (attendees 4)
   (+ 120 150))
(= (attendees 3)
   (+ 120 150 150))
