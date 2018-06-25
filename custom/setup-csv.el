;;; package --- summary:
;;; commentary:
;;; code:

(use-package csv-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
  (autoload 'csv-mode "csv-mode"
    "Major mode for editing comma-separated value files." t)
  (setq csv-separators '("," ";" "|" " ")))

(provide 'setup-csv)
;;; setup-csv.el ends here
