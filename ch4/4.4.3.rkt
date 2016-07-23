;; tax-rate number -> number
(define (tax-rate income)
  (cond
    ((<= income 240) 0)
    ((<= income 480) .15)
    (else .28)))

(= (tax-rate 120)
   0)

(= (tax-rate 240)
   0)

(= (tax-rate 241)
   .15)

(= (tax-rate 480)
   .15)

(= (tax-rate 481)
   .28)

;; tax number -> number
(define (tax wage)
  (* wage
     (tax-rate wage)))

(= (tax 120)
   0)

(= (tax 240)
   0)

(= (tax 241)
   (* 241
      (tax-rate 241)))

(= (tax 480)
   (* 480
      (tax-rate 480)))

(= (tax 481)
   (* 481
      (tax-rate 481)))
