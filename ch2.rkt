;; 2.0
;; basic calculation
(+ 5 5)
(+ -5 5)
(+ 5 -5)
(- 5 5)
(* 3 4)
(/ 8 12)

;; nesting
(* (+ 2 2) (/ (* (+ 3 5) (/ 30 10)) 2))

;; operators
(sqrt 4)
(expt 2 3)
(remainder 2 3)
(log 1)
(sin 0)

;; 2.1.2
(sqrt 4)
(sqrt 2)
(sqrt -1)

;; 2.2
(define (area-of-disk r)
  (* 3.14 (* r r)))

(area-of-disk 5)

(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

(area-of-ring 5 3)

;;;;;;;;;;;
;; 2.2.1 ;;
;;;;;;;;;;;

(require htdp/convert)

(define (Fahrenheit->Celsius f)
  (* (- f 32)
     (/ 5 9)))

(Fahrenheit->Celsius 108)

(convert-gui Fahrenheit->Celsius)


