(install-all-packages 'org-bullets)

(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(custom-theme-set-faces
 'user
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
 '(org-verbatim ((t (:inherit (shadow fixed-pitch))))))

(custom-theme-set-faces
 'user
 '(variable-pitch ((t (:family "DejaVu Sans" :height 120 :weight normal))))
 '(fixed-pitch ((t ( :family "Hack" :height 100 :weight normal)))))

(setq org-hide-emphasis-markers t)

(provide 'drops-org)
