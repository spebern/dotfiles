;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Bernhard Specht"
      user-mail-address "bernhard@specht.net"
      display-line-numbers-type nil)

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;;(setq doom-font (font-spec :family "Source Code Pro" :size 13))
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(load! "+org.el")
(load! "+bindings.el")
(load! "+python.el")
(load! "+rust.el")
(load! "+latex.el")
(load! "+go.el")
(load! "+solidity.el")

(load! "helpers.el")

(setq dap-auto-configure-mode t)
(require 'dap-cpptools)

(defun open-my-file ()
  "Open my file"
  (interactive)
  (find-file "/path/to/file.txt"))

(defun bold/open-slipbox ()
  (interactive)
  (find-file "~/Nextcloud/org/braindump/org/inbox.org"))

(add-hook 'elfeed-search-mode-hook #'elfeed-update)

(setq code-review-auth-login-marker 'forge)

(use-package! treesit-auto
 :demand t
 :config
 (setq treesit-auto-install 'prompt)
 (global-treesit-auto-mode))
