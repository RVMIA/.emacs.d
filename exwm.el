;; dmenu
(use-package dmenu
  :ensure t
  :bind
  ("s-p" . 'dmenu))

;; exwm
(use-package exwm
  :ensure t
  :config
  (require 'exwm-config)
  (exwm-config-default))


;; systray
(require 'exwm-systemtray)
(exwm-systemtray-enable)


;; swap workspaces
(global-set-key (kbd "s-k") 'exwm-workspace-delete)
(global-set-key (kbd "s-w") 'exwm-workspace-swap)


;; xrandr
(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(0 "DisplayPort-0" 1 "HDMI-A-0"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output DisplayPort-0 --right-of HDMI-A-0 --auto")))
(exwm-randr-enable)									
