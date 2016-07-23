;; interest-rate : number -> number
(define (interest-rate amount)
  (cond
    ((and
      (<= 0 amount)
      (<= amount 1000))
     .040)
    ((and
      (< 1000 amount)
      (<= amount 5000))
     .045)
    ((> amount 5000)
     .050)))

(define (interest-rate2 amount)
  (cond
    ((<= amount 1000) .040)
    ((<= amount 5000) .045)
    (else .050)))

(= (interest-rate 500)
   (interest-rate2 500)
   .040)

(= (interest-rate 1000)
   (interest-rate2 1000)
   .040)

(= (interest-rate 2000)
   (interest-rate2 2000)
   .045)

(= (interest-rate 5000)
   (interest-rate2 5000)
   .045)

(= (interest-rate 6000)
   (interest-rate2 6000)
   .050)

;; interest : number -> number
(define (interest amount)
  (* amount
     (interest-rate amount)))

(= (interest 500)
   (* 500 .040))

(= (interest 1000)
   (* 1000 .040))

(= (interest 2000)
   (* 2000 .045))

(= (interest 5000)
   (* 5000 .045))

(= (interest 6000)
   (* 6000 .050))


