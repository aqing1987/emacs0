;;; package --- summary:
;;; commentary:
;;; code:

(use-package sr-speedbar
  :init
  (setq speedbar-show-unknown-files t)
  (setq speedbar-use-images nil)
  (setq sr-speedbar-right-side nil)
  (setq sr-speedbar-auto-refresh nil)
  (setq sr-speedbar-max-width 30)

  :bind
  ("<f12>" . sr-speedbar-toggle))

(provide 'setup-sr-speedbar)
;;; setup-sr-speedbar.el ends here
