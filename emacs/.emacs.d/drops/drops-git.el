(install-all-packages 'magit)

(require 'magit)

(setq
 git-commit-fill-column 9999
 git-commit-summary-max-length 9999
 git-commit-finish-query-functions nil)

(provide 'drops-git)
