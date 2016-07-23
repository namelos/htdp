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

;; weekly-wage : number -> number
(define hourly-wage 12)

(define (weekly-wage hours)
  (* hours hourly-wage))

(= (weekly-wage 0)
   0)

(= (weekly-wage 40)
   (* 40 hourly-wage))

(= (weekly-wage 100)
   (* 100 hourly-wage))

;; net-pay : number -> number
(define (net-pay hours)
  (let
      ((pay (weekly-wage hours)))
    (- pay
       (tax pay))))

(= (net-pay 0)
   0)

(= (net-pay 10)
   (let
       ((pay (weekly-wage 10)))
     (- pay
        (tax pay))))

(= (net-pay 40)
   (let
       ((pay (weekly-wage 40)))
     (- pay
        (tax pay))))

(= (net-pay 80)
   (let
       ((pay (weekly-wage 80)))
     (- pay
        (tax pay))))

