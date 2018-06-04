;;; package --- summary:
;; set for company
;;; commentary:

;;; code:

(use-package company
  :init
  (global-company-mode 1)
  (setq company-minimum-prefix-length 2)
  (delete 'company-semantic company-backends))

(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers)
  :config
  (add-to-list 'company-c-headers-path-system "/usr/include/c++/5/"))

(provide 'setup-company)
;;; setup-company.el ends here
