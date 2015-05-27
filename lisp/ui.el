;;; ui.el

(require 'hl-indent)
(custom-set-variables
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(tool-bar-mode nil)
 '(git-gutter:modified-sign "~")
 '(git-gutter:lighter " GG"))
(add-hook 'emacs-startup-hook (lambda () (split-window-right)))
(custom-set-faces
 '(cursor ((t (:background "#FF0000" :foreground "#272822" :inverse-video t))))
 '(hl-indent-block-face-1 ((t (:background "#333"))))
 '(hl-indent-face ((t (:inherit (quote hl-indent-block-face-1)))))
 '(sp-pair-overlay-face ((t nil))))
(set-face-attribute 'default nil :height 150)
(set-face-attribute 'region  nil :background "#ebebeb")
(add-hook 'prog-mode-hook 'hl-indent-mode)

(global-hl-line-mode +1)
(setq visible-bell 1)
(setq-default truncate-lines t)
(show-paren-mode 1)
(require 'column-marker)
(add-hook 'find-file-hook (lambda () (interactive) (column-marker-1 80)))
(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))
(my-global-rainbow-mode 1)
(nyan-mode 1)
(scroll-bar-mode -1)

(global-linum-mode 1)

(global-git-gutter-mode +1)
(set-face-background 'git-gutter:modified "#FFFC40")
(set-face-background 'git-gutter:added    "#00FF00")
(set-face-background 'git-gutter:deleted  "#FF0000")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq         css-indent-offset 2)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-enable-auto-pairing -1)

(add-hook 'after-init-hook 'global-company-mode)
(require 'multiple-cursors)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(smartparens-global-mode t)
(require 'smartparens-config)
(sp-pair "<%" "%>")
