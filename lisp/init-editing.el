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
(use-package multiple-cursors
  :defer 1
  :ensure t
  :config
  (add-hook 'after-init-hook 'multiple-cursors-mode)
  :bind
  ("C-S-c C-S-c" . 'mc/edit-lines)
  ("C-S-c C-S-c" . 'mc/edit-lines)
  ("C->" . 'mc/mark-next-like-this)
  ("C-<" . 'mc/mark-previous-like-this)
  ("C-c C-<" . 'mc/mark-all-like-this))

(require 'init-hs-mode)
