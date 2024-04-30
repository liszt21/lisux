(define-module (lisux config packages))

(define-public @emacs-packages (list "emacs-next"))

(define-public @treesit-packages 
  (list 
    "tree-sitter-c"
    "tree-sitter-go"
    "tree-sitter-cpp"
    "tree-sitter-elm"
    "tree-sitter-css"
    "tree-sitter-org"
    ; "tree-sitter-php"
    ; "tree-sitter-ruby"
    "tree-sitter-bash"
    "tree-sitter-rust"
    "tree-sitter-json"
    "tree-sitter-java"
    "tree-sitter-html"
    "tree-sitter-julia"
    ; "tree-sitter-ocaml"
    ; "tree-sitter-racket"
    "tree-sitter-python"
    "tree-sitter-scheme"
    "tree-sitter-clojure"
    "tree-sitter-haskell"
    "tree-sitter-markdown"
    "tree-sitter-typescript"
    "tree-sitter-javascript"))

(define-public @font-packages
  (list 
    ;;"font-sarasa-gothic" 
    "font-adobe-source-code-pro" 
    "font-fira-code" 
    "font-lxgw-wenkai" 
    "font-gnu-unifont" 
    "emacs-all-the-icons"))