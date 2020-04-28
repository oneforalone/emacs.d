(provide 'init-company)

(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(use-package company
  :ensure t
  :config (add-hook 'after-init-hook #'global-company-mode)
  :bind (:map company-active-map
	      ("M-/" . company-complete)
	      ("C-n" . company-select-next)
	      ("C-p" . company-select-previous)))

