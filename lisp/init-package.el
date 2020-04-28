(provide 'init-package)

;; custom file, to store package installed info
;; must set before package initialize
(setq custom-file
      (expand-file-name
       "custom.el"
       user-emacs-directory))

(require 'package)
(setq package-archives
      '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
	("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(defvar *package-lists-fetched* nil)

(defun soft-fetch-package-lists ()
  (unless *package-lists-fetched*
    (package-refresh-contents)
    (setf *package-lists-fetched* t)))

(defun package-locally-installed-p (package)
  (assq package package-alist))

(defun require-package (&rest packages)
  (unless (cl-loop for package in packages
		   always (package-locally-installed-p package))
    (soft-fetch-package-lists)
    (dolist (package packages)
      (unless (package-locally-installed-p package)
	(package-install package)))))

(require-package 'use-package)
