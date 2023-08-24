(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;; Mode Line
(setq column-number-mode t)
(setq-default fill-column 80)

;;; Font
(add-to-list 'default-frame-alist
	     '(font . "Monospace-10"))

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
