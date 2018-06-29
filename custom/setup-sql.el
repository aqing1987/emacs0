;;; package --- summary:
;;; commentary:
;;; code:

(use-package sql-indent
  :config
  (eval-after-load "sql"
    '(load-library "sql-indent")))

(provide 'setup-sql)
;;; setup-sql.el ends here
