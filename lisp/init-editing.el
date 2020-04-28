(provide 'init-editing)

(add-hook 'after-init-hook 'global-auto-revert-mode)

(when (fboundp 'auto-save-visited-mode)
  (auto-save-visited-mode t))

(defun full-auto-save ()
  (interactive)
  (save-excursion
    (dolist (buf (buffer-list))
      (set-buffer buf)
      (if (and (buffer-file-name) (buffer-modified-p))
	  (basic-save-buffer)))))
(add-hook 'auto-save-hook 'full-auto-save)

(defun save-all ()
  (interactive)
  (save-some-buffers t))
(add-hook 'focus-out-hook 'save-all)

(setq auto-save-list-file-prefix backup-dir)

;; multiple cursors
(defun multiple-cursors-key-bind ()
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package multiple-cursors
    :defer 1
    :ensure t
    :init
    (add-hook 'after-init-hook 'multiple-cursors-mode)
    (add-hook 'after-init-hook 'multiple-cursors-key-bind))

(require 'init-hs-mode)
