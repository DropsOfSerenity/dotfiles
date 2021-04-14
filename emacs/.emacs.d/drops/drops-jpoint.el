(setq jslides-highlights
      '(
        ("^\\.[[:alnum:]_]+" . font-lock-keyword-face)
        ("^\\!.*" . font-lock-comment-face)
        ))

(define-derived-mode jpoint-mode fundamental-mode "JPoint"
  "major mode for editing jslides slideshows."
  (setq font-lock-defaults '(jslides-highlights)))

(add-to-list 'auto-mode-alist '("\\.jslides\\'" . jpoint-mode))

(provide 'drops-jpoint)
