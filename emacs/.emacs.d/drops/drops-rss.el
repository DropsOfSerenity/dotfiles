(install-all-packages 'elfeed)

(setq elfeed-feeds
      '(
        ;;; Protesilaos Stavrou's various RSS feeds provide takes on
        ;;; free software, politics, and philosophy.
        ("https://protesilaos.com/codelog.xml" emacs prog)
        "https://protesilaos.com/politics.xml"
        "https://protesilaos.com/books.xml"

        ("https://drewdevault.com/blog/index.xml" prog)
        ))

(define-key global-map (kbd "C-c e") 'elfeed)

(provide 'drops-rss)
