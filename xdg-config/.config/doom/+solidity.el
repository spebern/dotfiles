;;; +solidity.el -*- lexical-binding: t; -*-

(require 'lsp-mode)

(defgroup lsp-solidity nil
  "LSP support for solidity."
  :group 'lsp-mode
  :link '(url-link "https://www.npmjs.com/package/solidity-language-server"))

(defcustom lsp-clients-solidity-executable '("solc"  "--lsp")
  "Command to start the solidity language server."
  :group 'lsp-solidity
  :risky t
  :type 'file)

(defcustom lsp-clients-solidity-initialization-options '()
  "Initialization options for solidity language server."
  :group 'lsp-solidity
  :type 'alist)

(lsp-dependency 'solidity-language-server
                '(:system "solc"))


(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection
                                   (lambda ()
                                     `(,(or (executable-find (cl-first lsp-clients-solidity-executable))
                                            (lsp-package-path 'solc))
                                       ,@(cl-rest lsp-clients-solidity-executable))))
                  :major-modes '(solidity-mode)
                  :priority -1
                  :server-id 'solc
                  :initialization-options (lambda () lsp-clients-solidity-initialization-options)
                  :download-server-fn (lambda (_client callback error-callback _update?)
                                        (lsp-package-ensure 'solc
                                                            callback error-callback))))

(lsp-consistency-check lsp-solidity)

(provide 'lsp-solidity)
