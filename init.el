;;; Neil's emacs config
;; Neil Chan
;; 23 May 2018

;; add directories to search when loading files with `load'

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(require 'init-ui)
(require 'init-packages)
