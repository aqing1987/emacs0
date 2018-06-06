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

(provide 'setup-misc)
;;; setup-misc.el ends here
