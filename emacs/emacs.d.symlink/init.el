(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar my-packages '(better-defaults
		      clojure-mode
		      clojure-test-mode
                      cider
                      color-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'load-path "~/.emacs.d/slime")
(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/local/bin/ccl")
(setq slime-contribs '(slime-fancy))
