(setq initial-frame-alist
      '(
        (width . 120) ; character
        (height . 70) ; lines
        ))

;(load "~/../../Dropbox/emacs-libs/haskell-mode/haskell-site-file")
;(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'load-path "~/../../emacs-libs")
(add-to-list 'load-path "~/../../emacs-libs/color-themes")
(add-to-list 'custom-theme-load-path "~/../../emacs-libs/color-themes")
(load-theme 'eziam-light t)
;(load-theme 'zenburn t)

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)

;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)


;(load-theme 'spacegray t)
;(load-theme 'zenburn t)

;(load-theme 'soft-morning t)
;(load-theme 'gandalf t)
;(set-face-attribute 'region nil :background "#666")
;(set-face-attribute 'default nil :font "CMU Typewriter Text-12")
;(set-face-attribute 'default nil :font "Consolas-10")
(set-face-attribute 'default nil :font "Hack-10")
;(set-face-attribute 'default nil :font "Fira Code Retina-10")
;(set-face-attribute 'default nil :height 110)
(autoload 'paredit-mode "paredit" "minor mode" t)
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
;(autoload 'rust-mode "rust-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.c99$" . cc-mode))
(add-to-list 'auto-mode-alist '("\\.spice$" . text-mode))
(add-to-list 'auto-mode-alist '("\\.st$" . html-mode))
;(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(blink-cursor-mode 0)
(show-paren-mode t)
(electric-pair-mode)
; Associate nfo file suffix with IBM codepage 437 encoding
(add-to-list 'auto-coding-alist '("\\.nfo\\'" . cp437-dos))

(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time-mode 1)

(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time

(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling


(global-hl-line-mode)

(setq-default indent-tabs-mode nil)

;disable backup
(setq backup-inhibited t)
;disable autosave
(setq auto-save-default nil)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
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
;(setq c-default-style "linux")
(setq c-basic-offset 4)
;(c-set-offset 'substatement-open 0)
;(c-set-offset 'case-label '+)

(require 'cc-mode)
(set-default 'indicate-empty-lines t)
(set-default 'imenu-auto-rescan t)

(global-linum-mode 0)
(column-number-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(let ((encoding 'utf-8))
  (set-default-coding-systems encoding)
  (set-buffer-file-coding-system encoding)
  (setq default-buffer-file-coding-system encoding)
  (setq default-process-coding-system (cons encoding encoding))
  (set-language-environment encoding))

(setq-default frame-title-format '("%b [%f]"))
