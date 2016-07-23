;; percent : number -> number
(define (percent n)
  (* n 1/100))

(= (percent 0)
   (* 0 1/100))

(= (percent 0.25)
   (* 0.25 1/100))

;; discount-percent : number -> number -> number
(define (discount-percent per)
  (λ (amount)
    (* (percent per)
       amount)))

;; discount-in-500 : number -> number
;; (define (discount-in-500 amount)
;;  (* (percent 0.25) amount))
(define discount-in-500
  (discount-percent 0.25))

(= (discount-in-500 0) 0)
(= (discount-in-500 400) 1)
(= (discount-in-500 500) 1.25)

;; discount-between-500-1500 : number -> number
;; (define (discount-between-500-1500 amount)
;;   (* (percent 0.5) amount))
(define discount-between-500-1500
  (discount-percent 0.5))

(= (discount-between-500-1500 0) 0)
(= (discount-between-500-1500 500) 2.5)
(= (discount-between-500-1500 1000) 5)

;; discount-between-1500-2500 : number -> number
;; (define (discount-between-1500-2500 amount)
;;   (* (percent 0.75) amount))
(define discount-between-1500-2500
  (discount-percent 0.75))

(= (discount-between-1500-2500 0) 0)
(= (discount-between-1500-2500 500) 3.75)
(= (discount-between-1500-2500 1000) 7.5)

;; discount-above-2500 : number -> number
;; (define (discount-above-2500 amount)
;;   (* (percent 1) amount))
(define discount-above-2500
  (discount-percent 1))

(= (discount-above-2500 0) 0)
(= (discount-above-2500 500) 5)
(= (discount-above-2500 1000) 10)

;; pay-back : number -> number
(define (pay-back spending)
  (cond
    ((<= spending 500) (discount-in-500 spending))
    ((<= spending 1500) (+ (discount-in-500 500)
                  (discount-between-500-1500 (- spending 500))))
    ((<= spending 2500) (+ (discount-in-500 500)
                           (discount-between-500-1500 1000)
                           (discount-between-1500-2500 (- spending 1500))))
    (else (+ (discount-in-500 500)
             (discount-between-500-1500 1000)
             (discount-between-1500-2500 1000)
             (discount-above-2500 (- spending 2500))))))

;; integration
(= (pay-back 400)
   (* (percent 0.25)
      400)
   1)

(= (pay-back 500)
   (* (percent 0.25)
      500)
   1.25)

(= (pay-back 1400)
   (+ (* (percent 0.25)
         500)
      (* (percent 0.50)
         (- 1400 500)))
   5.75)

(= (pay-back 1500)
   (+ (* (percent 0.25)
         500)
      (* (percent 0.50)
         1000))
   6.25)

(= (pay-back 2200)
   (+ (* (percent 0.25)
         500)
      (* (percent 0.50)
         1000)
      (* (percent 0.75)
         (- 2200 1500)))
   11.5)

(= (pay-back 2500)
   (+ (* (percent 0.25)
         500)
      (* (percent 0.50)
         1000)
      (* (percent 0.75)
         1000))
   13.75)

(= (pay-back 3000)
   (+ (* (percent 0.25)
         500)
      (* (percent 0.50)
         1000)
      (* (percent 0.75)
         1000)
      (* (percent 1)
         (- 3000 2500)))
   18.75)

