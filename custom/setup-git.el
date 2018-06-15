;;; package --- summary:
;;; commentary:
;;; code:

(use-package magit
  :init
  (progn (bind-key "C-x g" 'magit-status)))

;(use-package git-gutter
;  :init
;  (global-git-gutter-mode +1))

;(use-package git-timemachine)


(provide 'setup-git)
;;; setup-git.el ends here
