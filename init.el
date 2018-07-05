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

(defmacro local-require (pkg)
  "Load local PKG."
  `(load (file-truename (format "~/.emacs.d/site-lisp/%s/%s", pkg, pkg))))

(defmacro require-init (pkg)
  "Load self init PKG."
  `(load (file-truename (format "~/.emacs.d/custom/%s", pkg))))

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

(require-init 'setup-general)

(require-init 'setup-modeline)
(require-init 'setup-fonts)
(require-init 'setup-misc)
(require-init 'setup-ace-window)
(require-init 'setup-whichkey)
(require-init 'setup-sr-speedbar)
(require-init 'setup-helm)
(require-init 'setup-helm-gtags)
(require-init 'setup-org)
(require-init 'setup-company)
(require-init 'setup-fly)
(require-init 'setup-yasnippet)
(require-init 'setup-python)
(require-init 'setup-cc-mode)
(require-init 'setup-music)
(require-init 'setup-web)
(require-init 'setup-git)
(require-init 'setup-markdown)
(require-init 'setup-projectile)
(require-init 'setup-csv)

(require-init 'setup-personal)

;; @see https://github.com/hlissner/doom-emacs/wiki/FAQ
;; Adding directories under "~/.emacs.d/site-lisp/" to `load-path' slows
;; down all `require' statement. So we do this at the end of startup
;; Besides, no packages from ELPA is dependent "~/.emacs.d/site-lisp" now.
(require-init 'setup-site-lisp)

;;; init.el ends here
