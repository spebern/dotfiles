;;; tools/chatgpt/config.el -*- lexical-binding: t; -*-

(use-package! gptel
  :config
  (setq gptel-default-mode 'org-mode)
  (setq gptel-api-key
        (lambda () (efs/lookup-password :host "openai.com"))))

;; What does this function do?
(set-popup-rule! "^\\*ChatGPT" :size 0.7)
