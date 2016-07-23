;; (3, 7]
(define (between-3-7? n)
  (and (> n 3)
       (<= n 7)))

;; [3, 7]
(define (between-3-7-a? n)
  (and (>= n 3)
       (<= n 7)))

;; [3, 9]
(define (between-3-9? n)
  (and (>= n 3)
       (<= n 9)))

;; (1, 3) + (9,11)
(define (between-1-3-or-9-11? n)
  (or (and (> n 1)
           (< n 3))
      (and (> n 9)
           (< n 11))))
