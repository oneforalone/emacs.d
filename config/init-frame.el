(provide 'init-frame)

(defun simplify-frame-gui ()
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1))
(add-hook 'after-init-hook 'simplify-frame-gui)

(setq inhibit-startup-screen t)

;; doom-modeline fit Microsoft Windows Well, but not gnu/linux, nor Mac OS.
(if (eq system-type 'windows-nt)
    (use-package doom-modeline
    :defer t
    :ensure t
    :init (add-hook 'after-init-hook #'doom-modeline-mode))
  (progn
    (require 'awesome-tray)
    (setq awesome-tray-active-modules
	  '("location" "git" "buffer-name" "mode-name" "date" "battery"))
    (add-hook 'after-init-hook 'awesome-tray-mode)))

;; for windows control
(defun window-moving-keybind ()
  (global-set-key (kbd "C-c <up>") 'windmove-up)
  (global-set-key (kbd "C-c <down>") 'windmove-down)
  (global-set-key (kbd "C-c <right>") 'windmove-right)
  (global-set-key (kbd "C-c <left>") 'windmove-left))
(add-hook 'after-init-hook 'window-moving-keybind)


