;;; package --- summary:
;; set for org
;;; commentary:
;;; code:

;; org-bullets
(use-package org-bullets
  :config
  (add-hook 'org-mode-hook 'org-bullets-mode))

(use-package org-download
  :config
  (setq-default org-download-image-dir "~/orgfiles/img"))

(provide 'setup-org)
;;; setup-org.el ends here
