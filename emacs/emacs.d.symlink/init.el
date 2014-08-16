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

(global-set-key (kbd "S-C-<up>") 'enlarge-window)
(global-set-key (kbd "S-C-<down>") 'shrink-window)

(define-key input-decode-map "\e[1;5A" [C-up])
(define-key input-decode-map "\e[1;6A" [S-C-up])
(define-key input-decode-map "\e[1;6B" [S-C-down])

(server-start)
