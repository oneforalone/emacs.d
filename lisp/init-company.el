(provide 'init-company)

(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(require-package 'company)

(add-hook 'after-init-hook 'global-company-mode)

(with-eval-after-load 'company
    (dolist (backend '(company-eclim company-semantic))
      (delq backend company-backends))
    (define-key company-active-map (kbd "M-/") 'company-complete)
    (define-key company-active-map (kbd "C-n") 'company-select-next)
    (define-key company-active-map (kbd "C-p") 'company-select-previous))
