(add-to-list 'load-path "~/.emacs.d/drops/")

(require 'drops-init)
(require 'drops-defaults)
(require 'drops-c-c++)
(require 'drops-php)
(require 'drops-javascript)
(require 'drops-typescript)
(require 'drops-git)
(require 'drops-jpoint)
(require 'drops-keybindings)
(require 'drops-org)
(require 'drops-rss)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3b0cb7b97752956ce63f0884f77ccd42dc0f2a61b935302c38e11099f2f282e2" "45e76a1b1e3bd74adb03192bf8d6eea2e469a1cf6f60088b99d57f1374d77a04" "5d59bd44c5a875566348fa44ee01c98c1d72369dc531c1c5458b0864841f887c" "017868e2967ac2155574d4c90190d913b6f9c9cf0803ca32af702fde597ac039" "1f01a8fa4cbb79320d9a5760fa8ea88e9aa8f2317736ba11932a7ae2326971a2" "a06658a45f043cd95549d6845454ad1c1d6e24a99271676ae56157619952394a" "c1c459af570241993823db87096bc775506c378aa02c9c6cd9ccaa8247056b96" "c0fef082e36bb01efb44c8becead9f1d56234d61d84a849370195ca26d09cfa0" "fc0fe24e7f3d48ac9cf1f87b8657c6d7a5dd203d5dabd2f12f549026b4c67446" "9f9450547564423166a7d2de976c9ca712293170415ec78ed98d198748b44a90" "7e5d400035eea68343be6830f3de7b8ce5e75f7ac7b8337b5df492d023ee8483" "1de8de5dddd3c5138e134696180868490c4fc86daf9780895d8fc728449805f3" "643b4d181b6afa4306d65db76889d8b987e095ae8f262a4c71dd5669d39c9b09" "c342ef444e7aca36f4b39a8e2848c4ba793d51c58fdb520b8ed887766ed6d40b" "8ce796252a78d1a69e008c39d7b84a9545022b64609caac98dc7980d76ae34e3" default))
 '(package-selected-packages
   '(elfeed modus-themes counsel-jq web-mode dtrt-indent fzf auto-dim-other-buffers parchment-theme nordless-theme ir-black-theme faff-theme nix-mode aggressive-indent gruvbox-theme solarized-theme kaolin-themes helm-ls-git helm-git helm-git-grep helm smex dired-x gruber-darker-theme multiple-cursors minimal-theme naysayer-theme hl-todo magit sublimity smooth-scroll smooth-scrolling gandalf-theme exec-path-from-shell company tide nord-theme irony expand-region doom-modeline doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fixed-pitch ((t (:family "IBM Plex Mono" :height 100 :weight normal))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(variable-pitch ((t (:family "IBM Plex Sans" :height 120 :weight normal)))))
