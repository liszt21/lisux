(define-module (wsl)
  #:use-module (gnu system)
  #:use-module (lisux systems base))

; (use-modules 
;   (gnu system)
;   (lisux systems base))

(operating-system
  (inherit base-wsl-os))
