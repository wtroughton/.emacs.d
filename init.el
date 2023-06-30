; Emacs 28.2 error (replace once Emacs 29 is released)
(setq image-types (cons 'svg image-types))

;;; Mode Line
(setq column-number-mode t)

; Whitespace
(setq-default show-trailing-whitespace 't)
(setq-default indicate-empty-lines 't)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Info configuration
(add-to-list 'Info-default-directory-list "~/Info")

; Font
(set-frame-font "Menlo 14" nil t)

;;; Straight.el

; Bootstrap Straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

; Use use-package
; use-package will use straight.el to automatically install missing packages if you provide :straight t.
(straight-use-package 'use-package)

;(use-package exec-path-from-shell
;  :straight t)

; AUCTeX
(use-package auctex
  :defer t
  :ensure t
  :straight t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-modes '(tex-mode plain-tex-mode latex-mode doctex-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
