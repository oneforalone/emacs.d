(provide 'init-general)

(add-hook 'after-init-hook 'global-auto-revert-mode)

;; ido-mode setup
(ido-mode 1)
(setq ido-save-directory-list-file (expand-file-name "ido-last" backup-dir))
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(show-paren-mode 1)
(electric-indent-mode 1)
(semantic-mode 1)
(delete-selection-mode 1)

;; smex setups
(require-package 'smex)
(setq-default smex-save-file (expand-file-name "smex-items" backup-dir))
(add-hook 'after-init-hook 'smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(defun sudo (command)
  (interactive "MShell command (root): ")
  (with-temp-buffer
    (cd "/sudo::/")
    (async-shell-command)))

(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)

