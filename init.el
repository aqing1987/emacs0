;;; Neil's emacs config
;; Neil Chan
;; 23 May 2018

;; This must come before configurations of installed packages
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; disable emacs making changes, and keep the settings in a separate file
(setq custom-file (concat user-emacs-directory "custom-set-variables.el"))
(load custom-file 'noerror)

(require 'init-defaults)
(require 'init-packages)

(require 'init-cc-mode)
