(setq inhibit-startup-message t) ; Don't show the splash screen
(setq visible-bell t)            ; Flash when the bell rings;; Don't show the splash screen

;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

;; Non-blinking cursor
(blink-cursor-mode 0)

;; Hide scrollbar
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'horizontal-scroll-bar-mode nil)

;; Set default font
(set-face-attribute 'default nil
                    :family "DejaVuSansMono Nerd Font"
                    :height 120
                    :weight 'normal
                    :width 'normal)

;; initial window
(setq initial-frame-alist
      '(
        (width . 100) ; character
        (height . 40) ; lines
        ))

;; default/sebsequent window
(setq default-frame-alist
      '(
        (width . 100) ; character
        (height . 52) ; lines
        ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(auto-complete evil zenburn-theme monokai-theme projectile quickrun dart-mode json-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; recentf stuff
(recentf-mode 1)

;; Java
;; use C-c C-o to set offset
;; use C-c C-s to show syntactic information (show the variable that needs to be set)
(add-hook 'java-mode-hook (lambda ()
                            (setq c-default-style "java")
                            (c-set-offset 'arglist-intro '+)
                            (c-set-offset 'arglist-close '0)
                            (c-set-offset 'case-label '+)
                            (display-line-numbers-mode 1)
                            (auto-complete-mode t)
                            ))
(put 'erase-buffer 'disabled nil)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Load theme
(load-theme 'monokai t)

;; Auto-refresh dired on file change
(add-hook 'dired-mode-hook 'auto-revert-mode)

;; Enable Evil
(require 'evil)
(evil-mode 1)


;; Auto complete basic config
(ac-config-default)
