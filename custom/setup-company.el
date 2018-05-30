;;; package --- summary:
;; set for company
;;; commentary:

;;; code:

(use-package company
  :init
  (setq company-minimum-prefix-length 2)
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'setup-company)
;;; setup-company.el ends here
