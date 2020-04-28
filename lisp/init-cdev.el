(provide 'init-cdev)


(setq c-default-style "gnu")

;; setup GDB
(setq gdb-many-windows t)
(setq gdb-show-main t)

;; setup irony: support clang completion
(use-package company-irony
    :ensure t
    :after company)

(use-package company-irony-c-headers
    :ensure t
    :after company)

(eval-after-load 'company
  '(add-to-list 'company-backends '(company-irony company-irony-c-headers)))

(require 'init-ggtags)

(add-hook 'after-init-hook 'semantic-mode)
(add-hook 'after-init-hook (lambda ()
			     (require 'semantic)
			     (global-semantic-idle-summary-mode)
			     (global-semantic-idle-scheduler-mode)))
