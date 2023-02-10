;;; helpers.el -*- lexical-binding: t; -*-

(require 'uuid)

(defun helpers--insert-uuid ()
  "Insert a UUID at point."
  (interactive)
  (insert (uuid-string)))
