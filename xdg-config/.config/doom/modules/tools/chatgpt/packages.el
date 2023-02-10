;; -*- no-byte-compile: t; -*-
;;; tools/chatgpt/packages.el

(package! chatgpt
  :recipe (:host github :repo "joshcho/ChatGPT.el" :files ("dist" "*.el")))
