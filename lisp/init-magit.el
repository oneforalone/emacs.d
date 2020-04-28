(provide 'init-magit)

(use-package magit
  :defer t
  :bind (("C-x g" . magit-status)
	 ("C-x M-g" . magit-dispatch)))

