(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'liso-theme)
  (package-refresh-contents)
  (package-install 'liso-theme))
;;  DONT CHANGE ABOVE


(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))




;; DONT CHANGE BELOW
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(xresources))
 '(custom-safe-themes
   '("158f4e123878f1de2b5866ce8e1139a837dca8d4751a5a1c0b1f2bb1a06df05f" "77df8c957aea72f8d0f9710609163e0c957a477f95219b69a1a2b00b3f7f62ed" default))
 '(package-selected-packages
   '(xresources-theme haskell-mode popup-kill-ring exwm dmenu diminish spaceline org-bullets company dashboard rainbow-delimiters sudo-edit hungry-delete switch-window rainbow-mode avy smex ido-vertical-mode beacon liso-theme which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#0b1313" :foreground "#cdcac6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "UKWN" :family "Iosevka")))))
