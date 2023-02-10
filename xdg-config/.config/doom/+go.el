;;; +go.el -*- lexical-binding: t; -*-

(after! go-mode
  (setq gofmt-command "goimports")
  (add-hook 'go-mode-hook
            (lambda ()
              (add-hook 'before-save-hook 'gofmt nil 'make-it-local))))
