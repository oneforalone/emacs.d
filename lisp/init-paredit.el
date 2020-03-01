(provide 'init-paredit)

(require-package 'paredit)

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)

(setq paredit-common-modes '(emacs-lisp-mode-hook
			     eval-expression-minibuffer-setup-hook
			     ielm-mode-hook
			     lisp-interaction-mode-hook
			     scheme-mode-hook))

(dolist (mode paredit-common-modes)
  (add-hook mode #'enable-paredit-mode))
