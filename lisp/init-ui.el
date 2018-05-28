
;; disable tool bar
(tool-bar-mode -1)

;; disable menu bar
(menu-bar-mode -1)

;; disable scroll bar
(scroll-bar-mode -1)

;; disable cursor blink
(blink-cursor-mode -1)

;; config theme
(load-theme 'leuven t)

;; disable startup screen
(setq-default inhibit-startup-screen t)

;; change scratch message
(setq-default initial-scratch-message ";; Happy Hacking\n\n")

;; disable backup file
(setq-default make-backup-files nil)

;;; change default font
;; check current font: (face-attribute 'default :font)
(add-to-list 'default-frame-alist
	     '(font . "Inconsolata-14"))

;;; $
(provide 'init-ui)
