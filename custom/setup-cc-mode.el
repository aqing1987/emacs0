;;; package --- summary:
;;; commentary:

;;; code:

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(use-package google-c-style
  :config
  (add-hook 'c-mode-common-hook 'google-set-c-style)
  (add-hook 'c-mode-common-hook 'google-make-newline-indent)
  )

;; when out of emacs, we can use clang-format
;; clang-format -style=Google -i filename
;; find . -name "*.cc" | xargs clang-format -style=Google -i
(use-package clang-format
  :init
  (setq clang-format-style "Google")
  :config
  (global-set-key (kbd "C-c u") 'clang-format-buffer)
  )

;;; setup-cc-mode.el ends here
(provide 'setup-cc-mode)
