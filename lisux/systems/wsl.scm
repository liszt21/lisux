(define-module (lisux systems wsl)
  #:use-module (gnu system)
  #:use-module (lisux systems base))

(operating-system
  (inherit base-wsl-os))
