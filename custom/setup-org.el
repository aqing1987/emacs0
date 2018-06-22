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
\\usepackage[utf8]{inputenc} % Required for inputting international characters
\\usepackage[T1]{fontenc} % Output font encoding for international characters
\\usepackage{fontspec}
\\usepackage{xcolor} % Required for specifying custom colors
\\definecolor{grey}{rgb}{0.9,0.9,0.9} % color of the box surrounding the title

\\usepackage[sfdefault]{ClearSans} % Use the Clear Sans font (sans serif)
\\usepackage{graphicx}
\\usepackage{grffile}
\\usepackage{bookmark}
\\defaultfontfeatures{Mapping=tex-text}
\\setromanfont{Gentium}
\\setromanfont [BoldFont={Gentium Basic Bold},
                ItalicFont={Gentium Basic Italic}]{Gentium Basic}
\\setsansfont{DejaVu Sans}
\\setmonofont[Scale=0.8]{DejaVu Sans Mono}
\\usepackage{listings}
\\usepackage{geometry}
\\geometry{a4paper, textwidth=6.5in, textheight=10in,
            marginparsep=7pt, marginparwidth=.6in}
\\pagestyle{empty}
\\hypersetup{colorlinks=true, linkcolor=blue}
\\definecolor{foreground}{RGB}{220,220,204}
%\\definecolor{background}{RGB}{62,62,62}
\\definecolor{background}{RGB}{105,105,105}
\\definecolor{preprocess}{RGB}{250,187,249}
\\definecolor{var}{RGB}{239,224,174}
\\definecolor{string}{RGB}{154,150,230}
\\definecolor{type}{RGB}{225,225,116}
\\definecolor{function}{RGB}{140,206,211}
\\definecolor{keyword}{RGB}{239,224,174}
\\definecolor{comment}{RGB}{180,98,4}
\\definecolor{doc}{RGB}{175,215,175}
\\definecolor{comdil}{RGB}{111,128,111}
\\definecolor{constant}{RGB}{220,162,170}
\\definecolor{buildin}{RGB}{127,159,127}
\\title{}
      [NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

;; ;; when export to latex, use minted, rather then listings
;; (setq org-latex-listings 'minted)
;; (add-to-list 'org-latex-packages-alist '("" "minted"))
;; ;; add frame and line number for source code(using minted)
;; (setq org-latex-minted-options
;;       '(("frame" "single")
;;         ("linenos" "true")))

;; format source code
(setq org-latex-listings t)
;; Options for \lset command（reference to listing Manual)
(setq org-latex-listings-options
      '(
        ("basicstyle" "\\color{foreground}\\small")
        ("keywordstyle" "\\color{function}\\bfseries\\small")
        ("identifierstyle" "\\color{doc}\\small")
        ("commentstyle" "\\color{comment}\\small\\itshape")
        ("stringstyle" "\\color{string}\\small")
        ("showstringspaces" "false")
        ;;("backgroundcolor" "\\color{background}")
        ("tabsize" "4")
        ("captionpos" "t")
        ("breaklines" "true")
        ("breakatwhitespace" "true")
        ("showspaces" "false")
        ("columns" "flexible")
        ;;("frame" "single")
	("frame" "shadowbox")
        ("frameround" "tttt")
        ("framesep" "0pt")
        ("framerule" "3pt")
        ("rulecolor" "\\color{background}")
        ("fillcolor" "\\color{white}")
        ("rulesepcolor" "\\color{comdil}")
	))


;;org-mode takes care of the export from its own format to LaTex,
;;but we need to tell it to use xelatex to process the LaTex to PDF
(setq org-latex-pdf-process ;; org v8
      '("xelatex -interaction nonstopmode -output-directory %o %f"
	"xelatex -interaction nonstopmode -output-directory %o %f"
	"xelatex -interaction nonstopmode -output-directory %o %f"))

(setq org-latex-with-hyperref nil)
(setq org-latex-toc-command "\\tableofcontents\n\n\\newpage")

(setq org-latex-default-figure-position nil)
(setq org-latex-tables-centered nil)
;;(setq org-image-actual-width nil)
;;(setq org-latex-image-default-width "250")
;;(setq org-latex-image-default-height "160")

(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-files (list "~/orgfiles/work.org"
			     "~/orgfiles/i.org"
			     "~/orgfiles/schedule.org"))

(use-package org-pomodoro)

(provide 'setup-org)
;;; setup-org.el ends here
