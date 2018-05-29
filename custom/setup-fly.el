;;; package --- summary:
;;; commentary:

;;; code:
;; flycheck
(use-package flycheck
  :init (global-flycheck-mode)
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(provide 'setup-fly)
;;; setup-fly.el ends here
