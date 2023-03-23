;;; helpers.el -*- lexical-binding: t; -*-

(require 'uuid)

(defun helpers--insert-uuid ()
  "Insert a UUID at point."
  (interactive)
  (insert (uuid-string)))

(defun efs/lookup-password (&rest keys)
  (let ((result (apply #'auth-source-search keys)))
    (if result
        (funcall (plist-get (car result) :secret))
        nil)))
