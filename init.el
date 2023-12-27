(scroll-bar-mode -1)
(tool-bar-mode -1)

;;; Disable backup files (ending in ~)
(setq make-backup-files nil)

;;; Mode Line
(setq column-number-mode t)
(setq-default fill-column 80)
(add-hook 'org-mode-hook 'turn-on-auto-fill)

;;; Theme
(load-theme 'modus-operandi)

;;; Font
; (unless (eq system-type 'darwin) (add-to-list 'default-frame-alist
;	     '(font . "Monospace-10")))

(if (eq system-type 'darwin)
    (add-to-list 'default-frame-alist '(font . "Iosevka Nerd Font Mono-16"))
  (add-to-list 'default-frame-alist '(font . "Monospace-10")))

;; Always start with *scratch*
(setq initial-buffer-choice t)

(setq org-log-done 'time)

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

; Dependency of magit Straight.el does not fetch seq as it is part of
; 'straight-recipes-gnu-elpa-ignored-packages. Remove this dependency in the
; future version of Straight.el
(use-package seq
  :straight t)

(use-package magit
  :straight t)

(use-package slime
  :straight t
  :init
  (setq inferior-lisp-program "sbcl"))

(use-package rg
  :straight t)

;; See manual build of pdf-tools for nix configuration
;; https://github.com/politza/pdf-tools/issues/645
(use-package pdf-tools
  :straight t)

(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))
