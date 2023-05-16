(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(use-package vterm
  :ensure t)

(setq-default tab-width 8)

(use-package which-key
:ensure t
:init
(which-key-mode))

(use-package beacon
:ensure t
:init
(beacon-mode 1))

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))

(use-package rainbow-mode
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'rainbow-mode)
  (add-hook 'fundamental-mode-hook 'rainbow-mode)
  (rainbow-mode 1))

(use-package hungry-delete
  :ensure t
  :config (global-hungry-delete-mode))

(use-package sudo-edit
  :ensure t
  :bind ("C-c s" . sudo-edit))

(use-package rainbow-delimiters
  :ensure t
  :init
  (rainbow-delimiters-mode 1))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents . 5)))
  (setq dashboard-startup-banner 'official)
  (setq dashboard-banner-logo-title "dead inside frfr")
  (setq dashboard-center-content t)
  (setq dashboard-show-shortcuts nil)
  (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
  )

(display-time-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq scroll-conservatively 100)

(setq ring-bell-function 'ignore)

(defalias 'yes-or-no-p 'y-or-n-p)

(when window-system (global-prettify-symbols-mode t))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;(setq inhibit-startup-message t)

(defun config-visit ()
  (interactive)
  (find-file "~/.emacs.d/config.org"))
(global-set-key (kbd "C-c e") 'config-visit)

(defun config-reload ()
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(global-set-key (kbd "C-c r") `config-reload)

(defun config-visit-xmonad ()
    (interactive)
    (find-file "~/.config/xmonad/README.org"))
  (global-set-key (kbd "C-c x") 'config-visit-xmonad)

(setq electric-pair-pairs '(
			    (?\( . ?\))
			    (?\[ . ?\])
			    ))
(electric-pair-mode t)

(line-number-mode 1)
(column-number-mode 1)

(use-package spaceline
  :ensure t
  :config
  (require `spaceline-config)
  (setq powerline-default-separator (quote arrow))
  (spaceline-spacemacs-theme))

(use-package diminish
  :ensure t
  :init
  (diminish `hungry-delete-mode)
  (diminish `beacon-mode)
  (diminish `subword-mode)
  (diminish `rainbow-mode)
  (diminish `which-key-mode))

(use-package popup-kill-ring
  :ensure t
  :bind ("M-y" . popup-kill-ring))

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))

(setq org-src-window-setup 'current-window)

(setq ido-enable-flex-matching nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)

(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode 1))
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
  ("M-x" . smex))

(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

(global-set-key (kbd "C-x b") 'ibuffer)

(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-current-buffer)

(use-package switch-window
  :ensure t
  :config
  (setq switch-window-input-style 'minibuffer)
  (setq switch-window-increase 4)
  (setq switch-window-threshold 2)
  (setq switch-window-shortcut-style 'qwerty)
  (setq switch-window-qwerty-shortcuts
	'("a" "s" "d" "f" "h" "j" "k" "l"))
  :bind
  ([remap other-window] . switch-window))

(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(defun kill-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
(global-set-key (kbd "C-M-s-k") 'kill-all-buffers)

(defun kill-whole-word()
  (interactive)
  (backward-word)
  (kill-word 1))
(global-set-key (kbd "C-c w w") 'kill-whole-word)

(defun copy-whole-line ()
  (interactive)
  (save-excursion
    (kill-new
     (buffer-substring
      (point-at-bol)
      (point-at-eol)))))
(global-set-key (kbd "C-c w l") 'copy-whole-line)

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package dmenu
 :ensure t
  :bind
  ("s-p" . 'dmenu))

(use-package exwm
  :ensure t
  :config
  (require 'exwm-config)
  (exwm-config-default))

(require 'exwm-systemtray)
(exwm-systemtray-enable)

(global-set-key (kbd "s-k") 'exwm-workspace-delete)
(global-set-key (kbd "s-w") 'exwm-workspace-swap)

(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(0 "DisplayPort-0" 1 "HDMI-A-0"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output DisplayPort-0 --right-of HDMI-A-0 --auto")))
(exwm-randr-enable)
