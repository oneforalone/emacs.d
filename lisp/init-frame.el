(provide 'init-frame)


(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq inhibit-startup-screen t)


(require-package 'doom-modeline)
(add-hook 'after-init-hook 'doom-modeline-mode)
