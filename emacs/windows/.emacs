(load "c:/Users/itsuart/Dropbox/emacs-libs/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(add-to-list 'load-path "c:/Users/itsuart/Dropbox/emacs-libs")

(autoload 'paredit-mode "paredit" "minor mode" t)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))

(blink-cursor-mode 0)

(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time-mode 1)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(setq inhibit-startup-message t
      font-lock-maximum-decoration t
      mac-allow-anti-aliasig nil
      visible-bell nil
      ring-bell-function (lambda nil (message "")))

(defun display-startup-echo-area-message ()
  "If it wasn't for this you'd be GNU/Spammed by now"
  (message ""))

;; Don't insert instructions in the *scratch* buffer
(setq initial-scratch-message nil)

(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10)

(setq c-default-style "linux"
      c-basic-offset 4)
 
(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'imenu-auto-rescan t)

(global-linum-mode 1)
(column-number-mode t)

(fset 'yes-or-no-p 'y-or-n-p) 

(let ((encoding 'utf-8))
  (set-default-coding-systems encoding)
  (set-buffer-file-coding-system encoding)
  (setq default-buffer-file-coding-system encoding)
  (setq default-process-coding-system (cons encoding encoding))
  (set-language-environment encoding))

(server-start)
