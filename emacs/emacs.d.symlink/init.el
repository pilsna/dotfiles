(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

(package-initialize)
(defvar my-packages '(better-defaults
		      projectile
		      clojure-mode
		      cider))

(package-initialize)
(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

