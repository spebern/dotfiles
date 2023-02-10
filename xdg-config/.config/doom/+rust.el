;;; +rust.el -*- lexical-binding: t; -*-

(after! rustic
  (setq lsp-rust-analyzer-cargo-watch-command "clippy")
  (setq lsp-rust-analyzer-cargo-load-out-dirs-from-check t)
  (setq lsp-rust-analyzer-proc-macro-enable t)
  (setq lsp-rust-all-features t)
  (setq lsp-rust-full-docs t)
  (setq rustic-cargo-test-disable-warnings t)
  (set-popup-rule! "^\\*cargo" :size 0.5))
