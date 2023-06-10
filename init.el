(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(defun config-reload ()
    (interactive)
    
    (org-babel-load-file (expand-file-name "~/.config/emacs/config/config.org"))
    (delete-file (expand-file-name "~/.config/emacs/config/config.el"))

   ;; (org-babel-load-file (expand-file-name "~/.config/emacs/config/exwm.org"))
   ;; (delete-file (expand-file-name "~/.config/emacs/config/exwm.el"))

    (org-babel-load-file (expand-file-name "~/.config/emacs/config/customFunctions.org"))
    (delete-file (expand-file-name "~/.config/emacs/config/customFunctions.el"))

    (org-babel-load-file (expand-file-name "~/.config/emacs/config/eyeCandy.org"))
    (delete-file (expand-file-name "~/.config/emacs/config/eyeCandy.el"))

    (org-babel-load-file (expand-file-name "~/.config/emacs/config/keybinds.org"))
    (delete-file (expand-file-name "~/.config/emacs/config/keybinds.el"))

    (org-babel-load-file (expand-file-name "~/.config/emacs/config/preferences.org"))   
    (delete-file (expand-file-name "~/.config/emacs/config/preferences.el"))            
    )

(config-reload)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(powerline powerline-evil xelb which-key use-package switch-window sudo-edit smex sly rainbow-mode rainbow-delimiters popup-kill-ring org-bullets multi-vterm ido-vertical-mode hungry-delete haskell-mode dmenu dimmer diminish dashboard company beacon avy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
