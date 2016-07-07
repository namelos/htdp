;; tax number -> number
(define (tax income)
  (* 15/100 income))

(= (tax 10000)
   1500)

;; netpay number -> numeber
(define (netpay income)
  (- income (tax income)))

(- 12 (* 15/100 12))

(= (netpay 12)
   51/5)
