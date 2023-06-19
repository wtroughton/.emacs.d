; Emacs 28.2 error (replace once Emacs 29 is released)
(setq image-types (cons 'svg image-types))

;;; Mode Line
(setq column-number-mode t)

; Whitespace
(setq-default show-trailing-whitespace 't)
(setq-default indicate-empty-lines 't)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'Info-default-directory-list "~/Info")
