;;; Neil's emacs config
;; Neil Chan
;; 23 May 2018

;; This must come before configurations of installed packages
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(require 'init-ui)
(require 'init-packages)
