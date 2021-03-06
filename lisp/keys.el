;;; keys.el

;; multiple-cursors
(global-set-key   (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key   (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(load-library "neotree_text")
