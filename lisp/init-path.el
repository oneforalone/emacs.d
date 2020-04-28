(provide 'init-path)

(defconst backup-dir (concat user-emacs-directory "saves"))
(unless (file-exists-p backup-dir)
  (make-directory backup-dir t))

(setq backup-directory-alist
      `((".*" . ,backup-dir)))

(setq auto-save-file-name-transforms
      `((".*" ,backup-dir t)))


