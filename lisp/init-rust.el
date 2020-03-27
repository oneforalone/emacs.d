;; configure for rust mode

(provide 'init-rust)

(require-package 'rust-mode)

(add-hook 'rust-mode-hook
	  (lambda () (setq indent-tabs-mode nil)))

(add-hook 'rust-mode-hook 'enable-paredit-mode)
(setq rust-format-on-save t)

