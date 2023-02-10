;;; +org.el -*- lexical-binding: t; -*-

(setq! citar-bibliography '("~/Nextcloud/references.bib"))

(setq bookmark-default-file "~/Nextcloud/bookmarks")

(setq org-journal-encrypt-journal t)
(setq org-journal-dir "~/Nextcloud/org")

(use-package! ob-http)

(setq org-image-actual-width (list 550))

(setq-default org-download-image-dir "~/Nextcloud/org/images")
(setq-default org-roam-directory "~/Nextcloud/org")
(setq org-directory "~/Nextcloud/org/")

(use-package! org-modern
  :hook (org-mode . global-org-modern-mode)
  :config
  (setq org-modern-label-border 0.3))

(defun bold/tag-new-node-as-draft ()
  (org-roam-tag-add '("draft")))
(add-hook 'org-roam-capture-new-node-hook #'bold/tag-new-node-as-draft)

(defun transform-square-brackets-to-round-ones(string-to-transform)
  "Transforms [ into ( and ] into ), other chars left unchanged."
  (concat
   (mapcar #'(lambda (c) (if (equal c ?[) ?\( (if (equal c ?]) ?\) c))) string-to-transform))
  )

(after! org
  (add-to-list 'org-capture-templates
               '("s" "Slipbox" entry  (file "braindump/org/inbox.org")
                 "* %?\n"))

  (add-to-list 'org-capture-templates
               '("p" "Protocol" entry (file "braindump/org/inbox.org") "* %? [[%:link][%(transform-square-brackets-to-round-ones \"%:description\")]]\n\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?"))

  (add-to-list 'org-capture-templates
               '("L" "Protocol Link" entry (file "braindump/org/inbox.org") "* %? [[%:link][%(transform-square-brackets-to-round-ones \"%:description\")]]\n"))

  ;; (add-to-list 'org-capture-templates
  ;;              '("p" "Protocol" entry (file "braindump/org/inbox.org")
  ;;                "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?"))
  ;; (add-to-list 'org-capture-templates
  ;;              '("L" "Protocol Link" entry (file "braindump/org/inbox.org")
  ;;                "* %? [[%:link][%:description]] \nCaptured On: %U"))
  (add-to-list 'org-cite-global-bibliography "~/Nextcloud/references.bib"))
