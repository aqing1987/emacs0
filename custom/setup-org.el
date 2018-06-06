;;; package --- summary:
;; set for org
;;; commentary:
;;; code:

(require 'org)

;; disalb postamble
(setq org-html-postamble nil)

;; preserve line breaks when export
(setq org-export-preserve-breaks t)

;; set the table of contents level limit
(setq org-export-with-toc 2)

;; org-bullets
(use-package org-bullets
  :config
  (add-hook 'org-mode-hook 'org-bullets-mode))

(use-package org-download
  :config
  (setq-default org-download-image-dir "~/orgfiles/img"))

(provide 'setup-org)
;;; setup-org.el ends here
