;;; Configurations for semantic
(provide 'init-semantic)

;; enable semantic
(semantic-mode 1)

(global-semantic-idle-summary-mode)
(global-semantic-idle-completions-mode)
(global-semantic-mru-bookmark-mode)

(defun my-c-mode-cedet-hook ()
  (local-set-key "." 'semantic-complete-self-insert)
  (local-set-key ">" 'semantic-complete-self-insert))
(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;; semanticDB search throttle
(setq-mode-local c-mode
		 semanticdb-find-default-throttle
		 '(local project unloaded system recursive))

;; add or remove system include paths, i.e. header files path
;; `semantic-add-system-include dir &optional mode
;; `semantic-remove-system-include dir &optional mode
;; `semantic-customize-system-include-path &optional mode
;; set a mode include path by setting `semanticdb-implied-include-tags via
;; `defvar-mode-local

