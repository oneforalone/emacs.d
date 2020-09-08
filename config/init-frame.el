(provide 'init-frame)

(add-hook 'after-init-hook
	  (lambda ()
	    (progn (tool-bar-mode -1)
		   (scroll-bar-mode -1))))

(setq inhibit-startup-screen t)

;; doom-modeline fit Microsoft Windows Well, but not gnu/linux, nor Mac OS.
(if (eq system-type 'windows-nt)
    (use-package doom-modeline
    :defer t
    :ensure t
    :init (add-hook 'after-init-hook #'doom-modeline-mode))
  (use-package awesome-tray
      :init
      (add-hook 'after-init-hook #'awesome-tray-enable)
      (setq awesome-tray-active-modules
	    '("location" "git" "parent-dir" "mode-name" "battery" "date"))))

(use-package awesome-tab
    :config
      (awesome-tab-mode 1)
      (setq awesome-tab-height 100)
    :bind (("s-h" . awesome-tab-backward-tab)
    	   ("s-j" . awesome-tab-forward-group)
    	   ("s-k" . awesome-tab-backward-group)
    	   ("s-l" . awesome-tab-forward-tab)))


;; for windows control
(defun window-moving-keybind ()
  (global-set-key (kbd "s-c h") 'windmove-up)
  (global-set-key (kbd "s-c j") 'windmove-down)
  (global-set-key (kbd "s-c k") 'windmove-right)
  (global-set-key (kbd "s-c l") 'windmove-left))
(add-hook 'after-init-hook #'window-moving-keybind)


