;;; package --- Summary
;; Neil's Emacs Configurations

;;; Commentary:
;; Neil Chan
;; 23 May 2018

;;; code:
;;; set proxy
(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
	("http" . "127.0.0.1:1080")
	("https" . "127.0.0.1:1080")))

;;; init package
;; use M-x package-list-packages
;; to browse and install packages from MELPA and elsewhere.
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;;; disable emacs making changes, and keep the settings in a separate file
(setq custom-file (concat user-emacs-directory "custom-set-variables.el"))
(load custom-file 'noerror)

;;; load configurations
(add-to-list 'load-path (expand-file-name "~/.emacs.d/custom"))

(require 'setup-general)

(require 'setup-whichkey)
(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-org)
(require 'setup-company)
(require 'setup-fly)
(require 'setup-python)
(require 'setup-cc-mode)

;;; init.el ends here
