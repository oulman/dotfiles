(menu-bar-mode -1)
;;(tool-bar-mode -1)

;; backup files
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

(require 'package)
(package-initialize)

(add-to-list 'package-archives
	                  '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (puppet-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
