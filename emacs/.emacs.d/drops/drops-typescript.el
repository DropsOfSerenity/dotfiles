(install-all-packages 'tide 'company 'flycheck)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(setq typescript-indent-level 2)
(setq company-tooltip-align-annotations t)
(setq tide-always-show-documentation t)

(provide 'drops-typescript)
