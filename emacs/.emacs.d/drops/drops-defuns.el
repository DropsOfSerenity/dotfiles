(defun comment-or-uncomment-region-or-line ()
  "Comments or uncomments the region or the current line if there's no active region."
  (interactive)
  (let (beg end)
    (if (region-active-p)
        (setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region beg end)))

(defun join-next-line ()
  "Joins next line up. Like J in vim"
  (interactive)
  (save-excursion
    (next-line)
    (join-line)))

(defun insert-todo (&optional arg)
  (interactive)
  (comment-dwim arg)
  (insert "TODO(justin): "))

(defun insert-note (&optional arg)
  (interactive)
  (comment-dwim arg)
  (insert "NOTE(justin): "))

(defun previous-blank-line ()
  "Moves to the previous line containing nothing but whitespace."
  (interactive)
  (unless (search-backward-regexp "^[ \t]*\n" nil t)
    (goto-char (point-min))))

(defun next-blank-line ()
  "Moves to the next line containing nothing but whitespace."
  (interactive)
  (forward-line)
  (if (search-forward-regexp "^[ \t]*\n" nil t)
      (forward-line -1)
    (goto-char (point-max))))

(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
    the minibuffer. Else, if mark is active, indents region. Else if
    point is at the end of a symbol, expands it. Else indents the
    current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (dabbrev-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
          (dabbrev-expand nil)
        (indent-for-tab-command)))))

(provide 'drops-defuns)
