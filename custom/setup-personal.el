;;; package --- summary:
;;; commentary:
;;; code:

;; rely on ace-window
(defun z/swap-windows ()
  "Swap window with cursor stay."
  (interactive)
  (ace-swap-window)
  (aw-flip-window))

;; my own map
(define-prefix-command 'z-map)
(global-set-key (kbd "C-z") 'z-map)


(define-key z-map (kbd "w") 'z/swap-windows)

(provide 'setup-personal)
;;; setup-personal.el ends here
