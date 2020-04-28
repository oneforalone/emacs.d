;; Make startup faster by reducing the frequency of garbage
;; collection.  The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))

;; The rest of the init file.
;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))

(add-to-list 'load-path (expand-file-name "lisp"  user-emacs-directory))

(require 'init-path)
(require 'init-package)
(require 'init-frame)
(require 'init-general)
(require 'init-editing)
(require 'init-company)
(require 'init-magit)
(require 'init-slime)
(require 'init-paredit)
(require 'init-cdev)
(require 'init-rust)
(require 'init-org)

(when (file-exists-p custom-file)
  (load custom-file))
