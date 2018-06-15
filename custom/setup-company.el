;;; package --- summary:
;; set for company
;;; commentary:

;;; code:

(use-package company
  :config
  (setq company-idle-delay 0)  
  (setq company-minimum-prefix-length 2)
  (delete 'company-semantic company-backends)

  (global-company-mode 1))

(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers)
  :config
  (add-to-list 'company-c-headers-path-system "/usr/include/c++/5/"))

(use-package company-irony
  :config
  (add-to-list 'company-backends 'company-irony))

(use-package irony
  :config
  (add-hook 'c++mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package irony-eldoc
  :config
  (add-hook 'irony-mode-hook #'irony-eldoc))

(provide 'setup-company)
;;; setup-company.el ends here
