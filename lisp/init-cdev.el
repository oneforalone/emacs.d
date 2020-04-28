(provide 'init-cdev)


(setq c-default-style "gnu")

;; setup GDB
(setq gdb-many-windows t)
(setq gdb-show-main t)

;; setup irony: support clang completion
(use-package company-irony
  :defer t)

(use-package company-irony-c-headers
  :defer t)

(eval-after-load 'company
  '(add-to-list 'company-backends '(company-irony company-irony-c-headers)))

;; ggtags
(use-package ggtags
    :defer t
    :config
    (add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1)))))

;; semantic
(add-hook 'after-init-hook 'semantic-mode)
;; (add-hook 'c-mode-hook 'semantic-idle-summary-mode)
;; (add-hook 'c-mode-hook 'semantic-idle-completions-mode)
