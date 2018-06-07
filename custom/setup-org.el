;;; package --- summary:
;; set for org
;;; commentary:
;;; code:

(require 'org)
(require 'ox)
(require 'ox-latex)


;; disalb postamble
(setq org-html-postamble nil)

;; preserve line breaks when export
(setq org-export-preserve-breaks t)

;; set the table of contents level limit
(setq org-export-with-toc 2)

;; org-bullets
(use-package org-bullets
  :config
  (add-hook 'org-mode-hook 'org-bullets-mode))

(use-package org-download
  :config
  (setq-default org-download-image-dir "~/orgfiles/img"))

;;; LaTex config
;; 's-org-article' for export org documents to the LaTex 'article'
;; using xeTex and some fancy fonts; requires XeTeX (see
;; org-latex-to-pdf-process)
;; add
;; #+LaTex_CLASS: s-org-article
;; to the first line of org file

;; org-latex-classes
;; we can install texlive-fonts-extra for more fonts
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
	       '("s-article"
		 "\\documentclass[11pt,a4paper]{article}
\\usepackage[T1]{fontenc}
\\usepackage{fontspec}
\\usepackage{xcolor}
\\usepackage{graphicx}
\\usepackage{bookmark}
\\defaultfontfeatures{Mapping=tex-text}
\\setromanfont{Gentium}
\\setromanfont [BoldFont={Gentium Basic Bold},
                ItalicFont={Gentium Basic Italic}]{Gentium Basic}
\\setsansfont{Charis SIL}
\\setmonofont[Scale=0.8]{DejaVu Sans Mono}
\\usepackage{geometry}
\\geometry{a4paper, textwidth=6.5in, textheight=10in,
            marginparsep=7pt, marginparwidth=.6in}
\\pagestyle{empty}
\\hypersetup{colorlinks=true, linkcolor=blue}
\\author{Neil Chen}
\\title{}
      [NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

;;org-mode takes care of the export from its own format to LaTex,
;;but we need to tell it to use xelatex to process the LaTex to PDF
(setq org-latex-pdf-process ;; org v8
      '("xelatex -interaction nonstopmode -output-directory %o %f"
	"xelatex -interaction nonstopmode -output-directory %o %f"
	"xelatex -interaction nonstopmode -output-directory %o %f"))

(setq org-latex-with-hyperref nil)
(setq org-latex-toc-command "\\tableofcontents\n\n\\newpage")

(provide 'setup-org)
;;; setup-org.el ends here
