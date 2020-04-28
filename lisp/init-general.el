(provide 'init-general)

;; Use a hook so the message doesn't get clobbered by other messages.
(add-hook 'emacs-startup-hook
    (lambda ()
        (message "Emacs ready in %s with %d garbage collections."
            (format "%.2f seconds"
                (float-time
                    (time-subtract after-init-time before-init-time)))
        gcs-done)))


;; ido-mode
(add-hook 'after-init-hook 'ido-mode)
(setq ido-save-directory-list-file (expand-file-name "ido-last" backup-dir))
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(defun enable-common-mode ()
  (show-paren-mode 1)
  (electric-indent-mode 1)
  (delete-selection-mode 1))

(add-hook 'after-init-hook 'enable-common-mode)

;; smex 
(use-package smex
    :defer t
    :init
    (setq-default smex-save-file (expand-file-name "smex-items" backup-dir))
    (add-hook 'after-init-hook 'smex-initialize)
    :bind
    (("M-x" . smex)
     ("M-X" . smex-major-mode-commands)))

(defun sudo (command)
  (interactive "MShell command (root): ")
  (with-temp-buffer
    (cd "/sudo::/")
    (async-shell-command)))

(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)

;; using the shell $PATH environment on OS X
(use-package exec-path-from-shell
  :defer 1
  :init (setq exec-path-from-shell-check-startup-files nil)
  :if (memq window-system '(mac ns))
  :ensure t
  :config (exec-path-from-shell-initialize))

;; ;; ESUP - Emacs Start Up Profiler
;; (use-package esup
;;   :ensure t
;;   :pin melpa
;;   :commands (esup))
