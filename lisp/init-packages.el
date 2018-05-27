
;;; init package
;; use M-x package-list-packages
;; to browse and install packages from MELPA and elsewhere.
(require 'package)
(setq package-enable-at-startup nil)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))

  (add-to-list 'package-archives
	       (cons "melpa" (concat proto "://melpa.org/packages/")) t))

(package-initialize)


;;; do install packages

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; org-bullets
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook 'org-bullets-mode))

;;; $
(provide 'init-packages)
