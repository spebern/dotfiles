;;; checkers/spell2/config.el -*- lexical-binding: t; -*-

(use-package! jinx
  :hook (emacs-startup . global-jinx-mode)
  :bind ([remap ispell-word] . jinx-correct))
