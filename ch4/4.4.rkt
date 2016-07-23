;; interest-rate : number -> number
(define (interest-rate amount)
  (cond
    ((and
      (<= 0 amount)
      (<= amount 1000))
     4.0)
    ((and
      (< 1000 amount)
      (<= amount 5000))
     4.5)
    ((> amount 5000)
     5.0)))

(define (interest-rate2 amount)
  (cond
    ((<= amount 1000) 4.0)
    ((<= amount 5000) 4.5)
    (else 5.0)))

(= (interest-rate 500)
   (interest-rate2 500)
   4.0)

(= (interest-rate 1000)
   (interest-rate2 1000)
   4.0)

(= (interest-rate 2000)
   (interest-rate2 2000)
   4.5)

(= (interest-rate 5000)
   (interest-rate2 5000)
   4.5)

(= (interest-rate 6000)
   (interest-rate2 6000)
   5.0)
