(menu-bar-mode -1)
;;(tool-bar-mode -1)

;; backup files
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

(require 'package)
(package-initialize)

(add-to-list 'package-archives
	                  '("melpa-stable" . "http://stable.melpa.org/packages/") t)
