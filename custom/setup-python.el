;;; package --- summary:
;; for python development

;;; commentary:
;; sudo pip install flake8

;;; code:

;; elpy
(use-package elpy
  :init
  (elpy-enable)
  :config
  (when (require 'flycheck nil t)
    (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
    (add-hook 'elpy-mode-hook 'flycheck-mode))
  )

(use-package py-autopep8
  :config
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

(provide 'setup-python)
;;; setup-python.el ends here
