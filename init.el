
(add-to-list 'load-path (expand-file-name "lisp"  user-emacs-directory))

(require 'init-path)
(require 'init-package)
(require 'init-frame)
(require 'init-general)
(require 'init-editing)
(require 'init-company)
(require 'init-magit)
(require 'init-slime)
(require 'init-c-setups)

(when (file-exists-p custom-file)
  (load custom-file))
