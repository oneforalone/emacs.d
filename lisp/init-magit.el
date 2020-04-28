(provide 'init-magit)

(defun magit-key-bind ()
  (global-set-key (kbd "C-x g") 'magit-status)
  (global-set-key (kbd "C-x M-g") 'magit-dispatch))

(use-package magit
    :defer t
    :ensure t
    :init (add-hook 'after-init-hook 'magit-key-bind))


(use-package git-gutter
    :defer t
    :ensure t
    :init (add-hook 'after-init-hook 'global-git-gutter-mode))
