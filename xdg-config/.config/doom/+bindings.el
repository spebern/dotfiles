;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

(map! :nvime "C-." #'lsp-execute-code-action)

(map! :leader "A" #'org-agenda-list)

(map! :leader "A" #'org-agenda-list)

(map! :leader "=" #'bold/open-slipbox)

(map! :leader "q A" #'gptel)
(map! :leader "q b" #'gptel)
(map! :leader "q a" #'gptel-send)
