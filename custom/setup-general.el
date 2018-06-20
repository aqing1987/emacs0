;;; package --- Summary
;; change the default

;;; commentary:
;; N/A

;;; code:
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

(electric-pair-mode 1)

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

;; adds a newline at the end of the buffer
;; for fixing: "\ No newline at end of file" issue
(setq require-final-newline t)

;; highlight brackets
(show-paren-mode 1)

;; use y/n, via symbol indirection process
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight current line
(global-hl-line-mode 1)

;; display-graphic-p check if emacs is running in graphical
;; environment. (that is, not terminal), many settings related to
;; windows size are not relevant if emacs is running in terminal.
;; default-frame-alist is a variable that holds a alist of any new
;; window.
(if (display-graphic-p)
    (progn
      (setq default-frame-alist
	    '((width . 80)
	      (right . 50)
	      (top . 50)))))

(global-set-key (kbd "<f5>") 'revert-buffer)

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; keep a list of recently opened files
(recentf-mode 1)
(global-set-key (kbd "<f6>") 'recentf-open-files)

;;; $
(provide 'setup-general)
;;; setup-general.el ends here
