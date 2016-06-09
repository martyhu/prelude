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
(setq js2-strict-trailing-comma-warning nil)

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
(define-key prelude-mode-map [(control h)] 'delete-backward-char)
(define-key prelude-mode-map "\C-w" 'backward-kill-word)
(define-key prelude-mode-map "\M-p" 'backward-paragraph)
(define-key prelude-mode-map "\M-n" 'forward-paragraph)
(define-key prelude-mode-map "\C-c\C-f" 'flycheck-next-error)
(define-key prelude-mode-map "\C-x\C-k" 'kill-region)
(define-key prelude-mode-map "\C-ct" 'indent-to-previous-line)
(define-key prelude-mode-map "\C-c<" 'small-back-indent)
(define-key prelude-mode-map "\C-c>" 'small-indent)
(defun indent-to-previous-line ()
  (interactive)
  (back-to-indentation)
  (kill-line 0)
  (indent-relative))
(define-key prelude-mode-map "\C-ct" 'indent-to-previous-line)
(defun ten-jump ()
  (interactive)
  (forward-line 10))
(define-key prelude-mode-map "\C-v" 'ten-jump)
(defun ten-back-jump ()
  (interactive)
  (forward-line -10))
(define-key prelude-mode-map "\M-v" 'ten-back-jump)

;; Change helm key bindings
(define-key helm-find-files-map (kbd "C-u") 'helm-find-files-up-one-level)
(define-key helm-find-files-map (kbd "C-h") 'helm-execute-persistent-action)

;; Javascript mode hook. js2 has terrible indentation and js3 does not support es6
(defun js-custom ()
  "js-mode-hook"
  (tern-mode t)
  )

(add-hook 'prelude-js-mode-hook
          '(lambda() (js-custom)))

;; Modes to open for different suffixes
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
