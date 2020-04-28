(provide 'init-magit)

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
	 ("C-x M-g" . magit-dispatch)))


(use-package git-gutter
    :defer t
    :ensure t
    :config (add-hook 'after-init-hook 'global-git-gutter-mode))
