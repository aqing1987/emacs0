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
\\usepackage{textcomp}
\\usepackage{xcolor} % Required for specifying custom colors
\\usepackage[sfdefault]{ClearSans} % Use the Clear Sans font (sans serif)
\\usepackage{graphicx}
\\usepackage{grffile}
\\usepackage{bookmark}
\\usepackage{fontspec}
%\\defaultfontfeatures{Mapping=tex-text}
\\setmainfont[
  Ligatures=TeX,
  BoldFont={Aboriginal Serif Bold},
  ItalicFont={Aboriginal Serif Italic},
  BoldItalicFont={Aboriginal Serif Bold Italic},
  %SmallCapsFont={TeX Gyre Termes},
  %SmallCapsFeatures={Letters=SmallCaps},
  Mapping=tex-text,
]{Doulos SIL}
\\setromanfont{Gentium}
\\setromanfont [BoldFont={Gentium Basic Bold},
                ItalicFont={Gentium Basic Italic}]{Gentium Basic}
\\setsansfont[Mapping=tex-text]{DejaVu Sans}
\\setmonofont[Scale=0.8]{DejaVu Sans Mono}
\\usepackage{listings}
\\usepackage{geometry}
\\geometry{a4paper, textwidth=6.5in, textheight=10in,
            marginparsep=7pt, marginparwidth=.6in}
\\pagestyle{empty}
\\hypersetup{colorlinks=true, linkcolor=blue}
\\definecolor{background}{RGB}{245,255,245}
\\definecolor{preprocess}{RGB}{91,62,84}
\\definecolor{var}{RGB}{160,82,45}
\\definecolor{type}{RGB}{34,139,34}
\\definecolor{string}{RGB}{139,34,82}
\\definecolor{function}{RGB}{0,0,255}
\\definecolor{keyword}{RGB}{160,32,240}
\\definecolor{comment}{RGB}{160,32,240}
\\definecolor{doc}{RGB}{139,34,82}
\\definecolor{constant}{RGB}{0,139,139}
\\definecolor{buildin}{RGB}{72,61,139}
\\definecolor{comdil}{RGB}{111,128,111}
\\title{}
      [NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

;; format source code
(setq org-latex-listings t)
;; Options for \lset command（reference to listing Manual)
(setq org-latex-listings-options
      '(
	("upquote" "true")
	("basicstyle" "\\color{black}\\ttfamily\\small")
        ("keywordstyle" "\\color{function}\\bfseries\\small")
        ("identifierstyle" "\\color{doc}\\small")
        ("commentstyle" "\\color{comment}\\small\\itshape")
        ("stringstyle" "\\color{string}\\small")
        ("showstringspaces" "false")
        ("backgroundcolor" "\\color{background}")
        ("tabsize" "4")
        ("captionpos" "t")
        ("breaklines" "true")
        ("breakatwhitespace" "true")
        ("showspaces" "false")
        ("columns" "flexible")
        ("frame" "single")
        ("frameround" "fttt")
        ("framesep" "1pt")
        ("framerule" "3pt")
	("rulecolor" "\\color{black}")
        ("fillcolor" "\\color{white}")
        ("rulesepcolor" "\\color{comdil}")
	))

(setq org-export-with-smart-quotes t)

;; (setq org-latex-title-command
;;       '("\\maketitle"
;; 	"\\colorbox{grey}
;; \\"))

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
