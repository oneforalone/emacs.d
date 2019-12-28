(provide 'init-c-setups)


(setq c-default-style "gnu")

;; setup GDB
(setq gdb-many-windows t)
(setq gdb-show-main t)

;; setup irony: support clang completion
(require-package 'company-irony 'company-irony-c-headers)
(require 'company-irony)
(require 'company-irony-c-headers)
(eval-after-load 'company
  '(add-to-list 'company-backends '(company-irony company-irony-c-headers)))

;; setup ggtags
(require-package 'ggtags)
(require 'ggtags)
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1))))
