
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
(setq inhibit-startup-screen t)

;; change scratch message
(setq initial-scratch-message ";; Happy Hacking\n\n")

;; disable backup file
(setq make-backup-files nil)

;; set title
(setq frame-title-format "P(A|B) = P(B|A)*P(A) / P(B)")

;; disable dialog box
(setq use-dialog-box nil)

;; highlight brackets
(show-paren-mode 1)

;; use y/n, via symbol indirection process
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight current line
(global-hl-line-mode 1)

;;; change default font
;; check current font: (face-attribute 'default :font)
(add-to-list 'default-frame-alist
	     '(font . "Inconsolata-14"))

;;; $
(provide 'init-defaults)
