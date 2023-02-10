;;; leetcode/config.el -*- lexical-binding: t; -*-

(use-package! leetcode
  :defer t
  :init
  (setq leetcode-prefer-language "python3"
        leetcode-prefer-sql "mysql"
        leetcode-save-solutions t
        leetcode-directory "~/leetcode")
  (setq-hook! 'leetcode-solution-mode-hook
            (lambda() (flycheck-mode -1))))
