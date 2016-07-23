;; is-5? : number -> boolean
(define (is-5? n)
  (= n 5))

;; is-between-5-6? : number -> boolean
(define (is-between-5-6? n)
  (and (< 5 n) (< n 6)))

;; is-between-5-6-or-over-10? : number -> boolean
(define (is-between-5-6-or-over-10? n)
  (or (is-between-5-6? n)
      (>= n 10)))

