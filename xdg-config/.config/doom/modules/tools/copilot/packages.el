;; -*- no-byte-compile: t; -*-
;;; tools/copilot/packages.el

(package! copilot
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))
