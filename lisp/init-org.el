(provide 'init-org)

;; set Org global key
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c b") 'org-switchb)

;; set todo keywords
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
	(sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
	(sequence "|" "CANCELED(c)")))

(setq org-todo-keyword-faces
      '(("TODO" . org-warning) ("STARTED" . "yellow")
	("CANCELED" . (:foreground "blue" :weight bold))))

(defun org-summary-todo (n-node n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)  ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;; set tags
(setq org-tag-alist '((:startgroup . nil)
		      ("@work" . ?w) ("@home" . ?h)
		      (:endgroup . nil)
		      ("laptop" . ?l) ("pc" . ?p)))

		      
