(require 'drops-defuns)

(install-all-packages
 'helm
 'helm-git-grep
 'ripgrep
 'helm-rg
 'projectile
 'helm-projectile
 )

;; NOTE(justin): Helm should use fuzzy matching.
(setq helm-completion-style 'helm-fuzzy)

(cua-mode t)

(define-key global-map (kbd "<f5>") #'modus-themes-toggle)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(define-key global-map (kbd "M-p") #'helm-projectile-find-file-dwim)
(define-key global-map (kbd "C-S-f") #'helm-projectile-rg)
(define-key global-map (kbd "M-0") #'delete-window)
(define-key global-map (kbd "M-1") #'delete-other-windows)
(define-key global-map (kbd "M-2") #'split-window-below)
(define-key global-map (kbd "M-3") #'split-window-right)
(define-key global-map (kbd "M-g") #'goto-line)
(define-key global-map (kbd "M-j") #'join-next-line)
(define-key global-map (kbd "M-/") #'comment-or-uncomment-region-or-line)
(define-key global-map (kbd "M-t") #'insert-todo)
(define-key global-map (kbd "M-y") #'insert-note)

(define-key global-map (kbd "C-S-v") #'yank-pop)
(define-key global-map (kbd "M-i") #'helm-imenu-in-all-buffers)

(define-key global-map (kbd "C-,") #'other-window)
(define-key global-map (kbd "C-i") #'ido-switch-buffer)
(define-key global-map (kbd "C-o") #'ido-find-file)

(define-key global-map (kbd "C-+") #'text-scale-increase)
(define-key global-map (kbd "C--") #'text-scale-decrease)
(define-key global-map (kbd "C-0") #'text-scale-adjust)
(define-key global-map (kbd "C-q") #'query-replace)
(define-key global-map (kbd "<C-tab>") #'indent-region)
(define-key global-map (kbd "C-<down>") #'next-blank-line)
(define-key global-map (kbd "C-<up>") #'previous-blank-line)
(define-key global-map (kbd "TAB") #'smart-tab)

(define-key global-map (kbd "C-S-c C-S-c") #'mc/edit-lines)
(define-key global-map (kbd "C->") #'mc/mark-next-like-this)
(define-key global-map (kbd "C-<") #'mc/mark-previous-like-this)
(define-key global-map (kbd "C-c C-<") #'mc/mark-all-like-this)

(define-key global-map (kbd "C-S-g") #'magit-status)
(define-key global-map (kbd "C-S-d") #'kill-whole-line)

(define-key global-map (kbd "<C-mouse-4>") #'text-scale-increase)
(define-key global-map (kbd "<C-mouse-5>") #'text-scale-decrease)

(define-key global-map (kbd "M-x") #'smex)

(define-key isearch-mode-map (kbd "<down>") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "<up>") 'isearch-repeat-backward)

(provide 'drops-keybindings)
