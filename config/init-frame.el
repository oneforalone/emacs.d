(provide 'init-frame)

(add-hook 'after-init-hook
	  (lambda ()
	    (progn (tool-bar-mode -1)
		   (scroll-bar-mode -1)
		   (load-theme 'the-matrix)

		   (when (fboundp 'menu-bar-mode)
		     (if (eq system-type 'darwin)
			 (menu-bar-mode 1)
		       (menu-bar-mode -1)))

		   (when (fboundp 'global-display-line-numbers-mode)
		     (global-display-line-numbers-mode))
		   
		   (when (executable-find "sbcl")
		     (slime)))))

(setq inhibit-startup-screen t)

;; for windows control
(defun window-moving-keybind ()
  (global-set-key (kbd "C-s-h") 'windmove-up)
  (global-set-key (kbd "C-s-j") 'windmove-down)
  (global-set-key (kbd "C-s-k") 'windmove-right)
  (global-set-key (kbd "C-s-l") 'windmove-left))
(add-hook 'after-init-hook #'window-moving-keybind)
