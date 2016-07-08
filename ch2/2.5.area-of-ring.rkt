;; area-of-disk : number -> number

;; calcluate the area of a disk

;; use case: (area-of-disk 5) => 78.5
(define (area-of-disk r)
  (* 3.14 (* r r)))

(= (area-of-disk 5)
   78.5)

;; area-of-ring : number number -> number

;; calclutate area of a ring whose outer range is outer,
;; inner range is inner

(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

(= (area-of-ring 5 3)
   (- (* 3.14 25)
      (* 3.14 9)))
