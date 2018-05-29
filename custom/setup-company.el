;;; package --- summary:
;; set for company
;;; commentary:

;;; code:

(use-package company
  :ensure t
  :init
  (setq company-minimum-prefix-length 2)
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (define-key company-active-map (kbd "C-s") #'company-filter-candidates)
  )

(provide 'setup-company)
;;; setup-company.el ends here
