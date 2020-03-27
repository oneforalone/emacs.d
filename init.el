
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
(require 'init-c-setups)
(require 'init-latex)
(require 'init-org)
(require 'init-rust)

(when (file-exists-p custom-file)
  (load custom-file))
