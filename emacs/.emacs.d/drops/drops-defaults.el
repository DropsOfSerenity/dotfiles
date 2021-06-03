(require 'drops-package)

(install-all-packages
 'expand-region
 'exec-path-from-shell
 'hl-todo
 'multiple-cursors
 'smex
 'dtrt-indent
 'smooth-scrolling
 'async
 'modus-themes
 )

(dtrt-indent-global-mode t)

(modus-themes-load-themes)
(load-theme 'modus-operandi t)
(define-key global-map (kbd "<f5>") #'modus-themes-toggle)

(setq visible-bell t)
(require 'dired-x)
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
(setq-default dired-dwim-target t)
(setq dired-listing-switches "-alh")
(defalias 'yes-or-no-p 'y-or-n-p)

(add-to-list 'default-frame-alist '(font . "Fira Code-10"))
(set-face-attribute 'default t :font "Fira Code-10")

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(ido-mode 1)
(show-paren-mode 1)
(electric-indent-mode 1)
(global-ede-mode 1)
(semantic-mode 1)
(delete-selection-mode 1)
(global-display-line-numbers-mode 0)
(global-hl-todo-mode 1)
(global-hl-line-mode 0)

;; defaults
(setq-default cursor-type t)
(setq-default blink-cursor-mode nil)
(set-default 'truncate-lines t)
(setq vc-follow-symlinks t)
(setq-default indent-tabs-mode nil)
(setq-default buffer-file-coding-system 'utf-8-unix)
(setq inhibit-startup-screen t)
(setq show-paren-delay 0)
(setq backup-directory-alist '((".*" . "~/.saves/")))
(setq ido-enable-flex-matching t)
(setq hl-todo-keyword-faces
      '(
        ("TODO"      . "#990000")
        ("FIXME"     . "#990099")
        ("IMPORTANT" . "#999900")
        ("NOTE"      . "#009900")
        ))

(require 'smooth-scrolling)
(smooth-scrolling-mode 1)

(provide 'drops-defaults)
