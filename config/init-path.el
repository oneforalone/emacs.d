(provide 'init-path)

(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

(defconst backup-dir (concat user-emacs-directory "saves"))

(defun ensure-backup-dir ()
  (unless (file-exists-p backup-dir)
    (make-directory backup-dir t)))

(add-hook 'after-init-hook 'ensure-backup-dir)

(setq backup-directory-alist
      `((".*" . ,backup-dir)))

(setq auto-save-file-name-transforms
      `((".*" ,backup-dir t)))


