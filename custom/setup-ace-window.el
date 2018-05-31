;;; package --- summary:
;;; commentary:
;;; code:

(use-package ace-window
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 2.8)))))
    ))

(provide 'setup-ace-window)
;;; setup-ace-window.el ends here
