(provide 'init-magit)

(use-package magit
  :defer t
  :bind (("C-x g" . magit-status)
	 ("C-x M-g" . magit-dispatch)))


(use-package git-gutter
    :defer t
    :init (add-hook 'after-init-hook 'global-git-gutter-mode))
