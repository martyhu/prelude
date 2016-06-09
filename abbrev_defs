;;-*-coding: utf-8;-*-
(defun dont-insert-expansion-char ()  t)    ;; this is the "hook" function
(put 'dont-insert-expansion-char 'no-self-insert t) ;; the hook should have a "no-self-insert"-property set

(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'bookmark-bmenu-mode-abbrev-table '())

(define-abbrev-table 'coffee-mode-abbrev-table
  '(
    ("db" "debug")
    ("cb" "callback" dont-insert-expansion-char 0)
    ("cend" "console.timeEnd")
    ("cerr" "console.error")
    ("clog" "console.log")
    ("cyo" "console.log('yo')")
    ("chi" "console.log('hi')")
    ("ctime" "console.time")
    ("prs" "JSON.parse")
    ("sfy" "JSON.stringify")
    ("ecb" "if err? then return callback(err)")
   ))

(define-abbrev-table 'js-mode-abbrev-table
  '(
    ("l" "let")
    ("c" "const")
    ("r" "require(" dont-insert-expansion-char 0)
    ("im" "import")
    ("ex" "export")
    ("fr" "from")
    ("rt" "return")
    ("db" "debug(" dont-insert-expansion-char 0)
    ("cb" "callback(" dont-insert-expansion-char 0)
    ("cend" "console.timeEnd(" dont-insert-expansion-char 0)
    ("cerr" "console.error(" dont-insert-expansion-char 0)
    ("clog" "console.log(" dont-insert-expansion-char 0)
    ("ctime" "console.time(" dont-insert-expansion-char 0)
    ("sfy" "JSON.stringify(" dont-insert-expansion-char 0)
   ))

(define-abbrev-table 'web-mode-abbrev-table
  '(
    ("l" "let")
    ("c" "const")
    ("r" "require(" dont-insert-expansion-char 0)
    ("im" "import")
    ("ex" "export")
    ("fr" "from")
    ("rt" "return")
    ("db" "debug(" dont-insert-expansion-char 0)
    ("cb" "callback(" dont-insert-expansion-char 0)
    ("cend" "console.timeEnd(" dont-insert-expansion-char 0)
    ("cerr" "console.error(" dont-insert-expansion-char 0)
    ("clog" "console.log(" dont-insert-expansion-char 0)
    ("ctime" "console.time(" dont-insert-expansion-char 0)
    ("sfy" "JSON.stringify(" dont-insert-expansion-char 0)
   ))

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table '())

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'inferior-python-mode-abbrev-table '())

(define-abbrev-table 'jython-mode-abbrev-table '())

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'occur-edit-mode-abbrev-table '())

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'package-menu-mode-abbrev-table '())

(define-abbrev-table 'pianobar-mode-abbrev-table '())

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'python-mode-abbrev-table '())

(define-abbrev-table 'python2-mode-abbrev-table '())

(define-abbrev-table 'python3-mode-abbrev-table '())

(define-abbrev-table 'sh-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-edit-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())
