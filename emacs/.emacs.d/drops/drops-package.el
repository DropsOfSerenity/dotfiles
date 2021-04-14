(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'cl)

(defun all-packages-installed? (list)
  (every #'package-installed-p list))

(defun install-all-packages (&rest package-list)
  (unless (all-packages-installed? package-list)
    (package-refresh-contents)
    (dolist (package package-list)
      (package-install package))))

(provide 'drops-package)
