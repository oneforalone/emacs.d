(provide 'init-frame)

(defun simplify-frame-gui ()
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1))
(add-hook 'after-init-hook 'simplify-frame-gui)

(setq inhibit-startup-screen t)

;; doom-modeline
(use-package doom-modeline
  :defer t
  :ensure t
  :init (add-hook 'after-init-hook #'doom-modeline-mode))

;; for windows control
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <left>") 'windmove-left)
