(require htdp/convert)

;; Fahrenheit->Celsius: number -> number
(define (Fahrenheit->Celsius f)
  (* (- f 32)
     (/ 5 9)))

(= (Fahrenheit->Celsius 32)
   0)

(convert-gui Fahrenheit->Celsius)
(convert-repl Fahrenheit->Celsius)
(convert-file "in.dat" Fahrenheit->Celsius "out.dat")
