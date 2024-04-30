(define-module (lisux systems base)
  #:use-module (gnu system)
  #:use-module (lisux config users)
  #:use-module (lisux config services)
  #:use-module (gnu system images wsl2)
  #:export (base-wsl-os))

(define base-wsl-services
  (with-guix-mirror (operating-system-user-services wsl-os)))

(define base-wsl-os
  (operating-system 
    (inherit wsl-os)
    (host-name "wsl-guix")
    (timezone "Asia/Shanghai")
    (users 
      (cons* 
        @user-liszt
        (user-account
          (inherit %root-account)
          (shell (wsl-boot-program "liszt")))
        %base-user-accounts))
    (services base-wsl-services)))

