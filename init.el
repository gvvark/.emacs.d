;;; init.el

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defvar my-load-libs
  '(
    "my-packages"
    "ui"
    "nav"
    "keys"
  ))

(dolist (p my-load-libs)
  (load-library p))

(require 'edit-server)
(edit-server-start)
