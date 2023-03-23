;; -*- no-byte-compile: t; -*-
;;; tools/chatgpt/packages.el

(package! gptel
  :recipe (:host github :repo "karthink/gptel" :files ("dist" "*.el")))
