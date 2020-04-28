(provide 'init-slime)

(use-package slime
    :defer t)

(setq slime-contribs '(slime-fancy slime-asdf slime-sprof slime-mdot-fu
				   slime-compiler-notes-tree slime-hyperdoc
				   slime-indentation slime-repl))

(setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
(setq slime-net-coding-system 'utf-8-unix)
(setq slime-startup-animation nil)
(setq slime-auto-select-connection 'always)
(setq slime-kill-without-query-p t)
(setq slime-description-autofocus t)
(setq slime-fuzzy-explanation "")
(setq slime-asdf-collect-notes t)
(setq slime-inhibit-pipelining nil)
(setq slime-load-failed-fasl 'always)
(setq slime-when-complete-filename-expand t)
(setq slime-repl-history-remove-duplicates t)
(setq slime-repl-history-trim-whitespaces t)
(setq slime-export-symbol-representation-auto t)
(setq lisp-indent-function 'common-lisp-indent-function)
(setq lisp-loop-indent-subclauses nil)
(setq lisp-loop-indent-forms-like-keywords t)
(setq lisp-lambda-list-keyword-parameter-alignment t)

(when (executable-find "sbcl")
  (add-to-list 'slime-lisp-implementations
	       '(sbcl ("sbcl"))))
