(provide 'init-paredit)

(setq paredit-common-modes '(emacs-lisp-mode-hook
			     lisp-mode-hook
			     eval-expression-minibuffer-setup-hook
			     ielm-mode-hook
			     lisp-interaction-mode-hook
			     scheme-mode-hook))

(use-package paredit
    :defer t
    :ensure t
    :init
    (dolist (mode paredit-common-modes)
      (add-hook mode #'enable-paredit-mode)))


