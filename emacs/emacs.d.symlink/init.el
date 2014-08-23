(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar my-packages '(better-defaults
		      clojure-mode
		      clojure-test-mode
                      cider
                      color-theme
                      move-text))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'load-path "~/.emacs.d/slime")
(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/local/bin/ccl")
(setq slime-contribs '(slime-fancy))

(global-set-key (kbd "S-C-<up>") 'enlarge-window)
(global-set-key (kbd "S-C-<down>") 'shrink-window)

(define-key input-decode-map "\e[1;6B" [S-C-down])
(define-key input-decode-map "\e[1;6B" [S-C-down])

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups

(server-start)
