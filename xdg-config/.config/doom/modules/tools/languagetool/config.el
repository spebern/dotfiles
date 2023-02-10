;;; grammar/config.el -*- lexical-binding: t; -*-

(use-package! languagetool
  :ensure t
  :defer t
  :commands (languagetool-check
             languagetool-clear-suggestions
             languagetool-correct-at-point
             languagetool-correct-buffer
             languagetool-set-language
             languagetool-server-mode
             languagetool-server-start
             languagetool-server-stop)
  :config
  (setq languagetool-java-arguments '("-Dfile.encoding=UTF-8")
        languagetool-console-command "/nix/store/rxs8szdljrh41z55vql87gngcisqchrj-LanguageTool-5.9/share/languagetool-commandline.jar"
        languagetool-server-command "/nix/store/rxs8szdljrh41z55vql87gngcisqchrj-LanguageTool-5.9/share/languagetool-server.jar"))
