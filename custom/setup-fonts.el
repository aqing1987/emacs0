;;; package --- summary:
;;; commentary:
;;; code:

(require 'cl)

;;; change default font
;; check current font: (face-attribute 'default :font)
;; DejaVu Sans Mono-12
(add-to-list 'default-frame-alist '(font . "Inconsolata"))

;; font scaling
(use-package default-text-scale
  :config
  (global-set-key (kbd "C-M-=") 'default-text-scale-increase)
  (global-set-key (kbd "C-M--") 'default-text-scale-decrease))

(provide 'setup-fonts)
;;; setup-fonts.el ends here
