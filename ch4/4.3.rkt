(define n 500)
(define n 2800)
(define n 15000)

(cond
  ((<= n 1000) .040)
  ((<= n 5000) .045)
  ((<= n 10000) .055)
  ((> n 10000) .060))

(cond
  ((<= n 1000) (* .040 1000))
  ((<= n 5000) (+ (* 1000 .040)
                  (* (- n 1000) .045)))
  (else (+ (* 1000 .040)
           (* 4000 .045)
           (* (- n 10000) .055))))

;; instrest-rate : number -> number
(define (interest-rate amount)
  (cond
    ((<= amount 1000) .040)
    ((<= amount 5000) .045)
    (else .050)))

(= (interest-rate 1000) .040)
(= (interest-rate 5000) .045)
(= (interest-rate 8000) .050)

