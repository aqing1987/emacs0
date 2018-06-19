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

(require 'setup-modeline)
(require 'setup-fonts)
(require 'setup-misc)
(require 'setup-ace-window)
(require 'setup-whichkey)
(require 'setup-sr-speedbar)
(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-org)
(require 'setup-company)
(require 'setup-fly)
(require 'setup-yasnippet)
(require 'setup-python)
(require 'setup-cc-mode)
(require 'setup-music)
(require 'setup-web)
(require 'setup-git)
(require 'setup-markdown)
(require 'setup-projectile)

(require 'setup-personal)

;;; init.el ends here
