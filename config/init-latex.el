(provide 'init-latex)

(when (eq system-type 'darwin)
  (add-to-path "/Library/TeX/texbin"))
(require-package 'auctex)
(require-package 'latex-preview-pane)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq pdf-latex-command "xelatex")

(add-hook 'plain-TeX-mode-hook
	  (lambda () (set (make-local-variable 'TeX-electric-math)
			  (cons "$" "$"))))

(add-hook 'LaTeX-mode-hook
	  (lambda () (set (make-local-variable 'TeX-electric-math)
			  (cons "\\(" "\\)"))))

(add-hook 'LaTeX-mode-hook 'latex-preview-pane-mode)

