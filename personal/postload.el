;; Remove Menu bar, Tool bar, scroll bar.
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Swap C-t and C-x so C-x is less painful to type.
(define-key key-translation-map [?\C-t] [?\C-x])
(define-key key-translation-map [?\C-x] [?\C-t])

;; Abbreviation mode.
(setq-default abbrev-mode t)
(read-abbrev-file abbrev-file-name t)
(setq dabbrev-case-replace nil)  ; Preserve case when expanding

;; Set tabs to indent as whitespace.
(setq-default indent-tabs-mode nil)

;; Set javascript indentation to 2.
(setq js2-basic-offset 2)
(setq jsx-indent-level 2)

;; Show trailing whitespace. (no longer) Delete ws on save.
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; easy keys to split window. Key based on ErgoEmacs keybinding
(define-key prelude-mode-map "\M-g" 'delete-window)
(define-key prelude-mode-map "\M-c" 'split-window-vertically)
(define-key prelude-mode-map "\M-t" 'split-window-horizontally)

;; Load Wind Move to move through windows more quickly.
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(define-key prelude-mode-map "\C-cg" 'windmove-left)          ; move to left window
(define-key prelude-mode-map "\C-cc" 'windmove-right)        ; move to right window
(define-key prelude-mode-map "\C-cp" 'windmove-up)              ; move to upper window
(define-key prelude-mode-map "\C-cn" 'windmove-down)          ; move to lower window

;; We want Google over Github
(define-key prelude-mode-map "\C-cG" 'prelude-google)

;; Change key bindings.
(global-set-key [(control h)] 'delete-backward-char)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\M-p" 'backward-paragraph)
(global-set-key "\M-n" 'forward-paragraph)
(global-set-key "\C-c\C-f" 'flymake-goto-next-error)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c<" 'small-back-indent)
(global-set-key "\C-c>" 'small-indent)
(defun indent-to-previous-line ()
  (interactive)
  (back-to-indentation)
  (kill-line 0)
  (indent-relative))
(global-set-key "\C-ct" 'indent-to-previous-line)
(defun ten-jump ()
  (interactive)
  (forward-line 10))
(global-set-key "\C-v" 'ten-jump)
(defun ten-back-jump ()
  (interactive)
  (forward-line -10))
(global-set-key "\M-v" 'ten-back-jump)
