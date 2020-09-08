;; Make startup faster by reducing the frequency of garbage
;; collection.  The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold most-positive-fixnum)

(add-to-list 'load-path (expand-file-name "config"  user-emacs-directory))

(require 'init-path)
(require 'init-package)
(require 'init-frame)
(require 'init-general)
(require 'init-editing)
(require 'init-company)
(require 'init-magit)
;; programming languages
(require 'init-slime)
(require 'init-paredit)
(require 'init-cdev)
(require 'init-rust)
;; notes mode
(require 'init-org)
(require 'init-markdown)

(when (file-exists-p custom-file)
  (load custom-file))
