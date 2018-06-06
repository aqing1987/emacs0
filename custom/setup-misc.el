;;; package --- summary:
;;; commentary:

;;; code:

;; deletes all the whitespace when you hit backspace or delete
(use-package hungry-delete
  :config
  (global-hungry-delete-mode))

;; auto-saves buffers
(use-package super-save
  :config
  (super-save-mode 1)
  (setq super-save-auto-save-when-idle t)
  (setq auto-save-default nil))

(use-package fill-column-indicator
  :config
  (setq whitespace-style '(face trailing)))

(define-global-minor-mode my-global-fci-mode fci-mode turn-on-fci-mode)
(my-global-fci-mode 1)

(provide 'setup-misc)
;;; setup-misc.el ends here
