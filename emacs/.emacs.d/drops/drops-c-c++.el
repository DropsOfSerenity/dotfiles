(install-all-packages 'irony)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(setq gdb-many-windows t)

;; Compilation
;; Operating system detection.
(setq jss-aquamacs (featurep 'aquamacs))
(setq jss-linux (or (featurep 'pgtk) (featurep 'x)))
(setq jss-win32 (not (or jss-aquamacs jss-linux)))

(when jss-win32
  (setq jss-makescript "build.bat"))
(when jss-linux
  (setq jss-makescript "./build.sh"))


(when jss-win32
  (setq jss-runscript "run.bat"))
(when jss-linux
  (setq jss-runscript "./run.sh"))


(require 'compile)
(setq compilation-context-lines 0)
(setq compilation-directory-locked nil)
(setq compilation-always-kill t)
(setq compilation-window-height 20)

(defun find-project-directory-recursive ()
  "Recursively search for a makefile."
  (interactive)
  (if (file-exists-p jss-makescript) t
    (cd "../")
    (find-project-directory-recursive)))

(defun lock-compilation-directory ()
  "The compilation process should NOT hunt for a makefile"
  (interactive)
  (setq compilation-directory-locked t)
  (message "Compilation directory is locked."))

(defun unlock-compilation-directory ()
  "The compilation process SHOULD hunt for a makefile"
  (interactive)
  (setq compilation-directory-locked nil)
  (message "Compilation directory is roaming."))

(defun find-project-directory ()
  "Find the project directory."
  (interactive)
  (setq find-project-from-directory default-directory)
  (if compilation-directory-locked (cd last-compilation-directory)
    (cd find-project-from-directory)
    (find-project-directory-recursive)
    (setq last-compilation-directory default-directory)))

(defun make-without-asking ()
  "Make the current build."
  (interactive)
  (if (find-project-directory) (compile jss-makescript))
  )

(defun run-without-asking ()
  "Run the current build."
  (interactive)
  (if (find-project-directory) (compile jss-runscript))
  )

(defun kill-compilation-buffer ()
  "Kill compilation buffer window"
  (interactive)
  (let ((win (get-buffer-window "*compilation*" 'visible)))
    (when win (delete-window win))))


(define-key global-map "\em" 'make-without-asking)
(define-key global-map "\en" 'next-error)
(define-key global-map "\eN" 'previous-error)
(define-key global-map "\e," 'kill-compilation-buffer)

(define-key global-map (kbd "<f1>") 'make-without-asking)
(define-key global-map (kbd "<f2>") 'run-without-asking)

;; C++ indentation style
(defconst jss-big-fun-c-style
  '((c-electric-pound-behavior   . nil)
    (c-tab-always-indent         . t)
    (c-comment-only-line-offset  . 0)
    (c-hanging-braces-alist      . ((class-open)
                                    (class-close)
                                    (defun-open)
                                    (defun-close)
                                    (inline-open)
                                    (inline-close)
                                    (brace-list-open)
                                    (brace-list-close)
                                    (brace-list-intro)
                                    (brace-list-entry)
                                    (block-open)
                                    (block-close)
                                    (substatement-open)
                                    (statement-case-open)
                                    (class-open)))
    (c-hanging-colons-alist      . ((inher-intro)
                                    (case-label)
                                    (label)
                                    (access-label)
                                    (access-key)
                                    (member-init-intro)))
    (c-cleanup-list              . (scope-operator
                                    list-close-comma
                                    defun-close-semi))
    (c-offsets-alist             . ((arglist-close         .  c-lineup-arglist)
                                    (label                 . -4)
                                    (access-label          . -4)
                                    (substatement-open     .  0)
                                    (statement-case-intro  .  4)
                                    (statement-block-intro .  4)
                                    (case-label            .  4)
                                    (block-open            .  0)
                                    (inline-open           .  0)
                                    (topmost-intro-cont    .  0)
                                    (knr-argdecl-intro     . -4)
                                    (brace-list-open       .  0)
                                    (brace-list-intro      .  4)))
    (c-echo-syntactic-information-p . t))
  "Jss's Big Fun C++ Style")
(defun jss-big-fun-c-hook ()
  ;; Set my style for the current buffer
  (c-add-style "BigFun" jss-big-fun-c-style t)
  ;; 4-space tabs
  (setq tab-width 4 indent-tabs-mode nil)
  (setq c-hanging-semi&comma-criteria '((lambda () 'stop)))

  (define-key c-mode-map (kbd "M-a") 'align)
  )
(add-hook 'c-mode-hook  'jss-big-fun-c-hook)
(add-hook 'c++-mode-hook  'jss-big-fun-c-hook)
(add-hook 'c-mode-hook
          (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))
(add-hook 'c++-mode-hook
          (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))


(provide 'drops-c-c++)
