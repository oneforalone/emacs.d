(provide 'init-path)

;; add addition path to Emacs shell path for mac
(defun add-to-path (path)
  "Append path to the `exec-path and `PATH"
  (setenv "PATH" (concat (getenv "PATH") ":" path))
  (setq exec-path (append exec-path `(,path))))

(add-to-path "/usr/local/bin")

(defconst backup-dir (concat user-emacs-directory "saves"))
(unless (file-exists-p backup-dir)
  (make-directory backup-dir t))

(setq backup-directory-alist
      `((".*" . ,backup-dir)))

(setq auto-save-file-name-transforms
      `((".*" ,backup-dir t)))


