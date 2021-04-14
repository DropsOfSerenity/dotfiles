(setq js-indent-level 4)
(setq css-indent-offset 4)

(add-hook 'js-mode-hook
          (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))


(provide 'drops-javascript)
