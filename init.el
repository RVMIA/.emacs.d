(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;  DONT CHANGE ABOVE


(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;; DONT CHANGE BELOW
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-hard))
 '(custom-safe-themes
   '("72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "158f4e123878f1de2b5866ce8e1139a837dca8d4751a5a1c0b1f2bb1a06df05f" "77df8c957aea72f8d0f9710609163e0c957a477f95219b69a1a2b00b3f7f62ed" default))
 '(package-selected-packages
   '(gruvbox-theme xresources-theme haskell-mode popup-kill-ring exwm dmenu diminish spaceline org-bullets company dashboard rainbow-delimiters sudo-edit hungry-delete switch-window rainbow-mode avy smex ido-vertical-mode beacon liso-theme which-key use-package))
 '(warning-suppress-log-types '((comp) (comp) (emacs)))
 '(warning-suppress-types '((comp) (emacs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "UKWN" :family "Iosevka")))))
