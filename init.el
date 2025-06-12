;;; UI Configuration
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(load-theme 'modus-vivendi t)
(set-face-attribute 'default nil :font "Adwaita Mono-14")

;;; Line & Encoding Settings
(global-display-line-numbers-mode 1)
(prefer-coding-system 'utf-8)

;;; Files & Backups
(setq make-backup-files nil)              ;; no file~ backups
(setq auto-save-default nil)              ;; no #file# autosaves
(setq auto-save-list-file-prefix nil)     ;; no .saves- crash files

;;; Whitespace & Tabs
(setq backward-delete-char-untabify-method nil)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)

;;; Custom Kill Function
(defun kill-whole-line-smart ()
  "Kill the whole line like Vim's `dd`."
  (interactive)
  (beginning-of-line)
  (kill-line 1))                           ;; `1` ensures newline is killed too

(global-set-key (kbd "C-k") 'kill-whole-line-smart)

;;; Language-specific Hooks

;; Assembly
(add-hook 'asm-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq indent-tabs-mode t)
            (setq asm-indent-level 2)))

;; C
(add-hook 'c-mode-hook
          (lambda ()
            (c-set-style "linux")
            (setq tab-width 8)
            (setq c-basic-offset 8)
            (setq indent-tabs-mode t)))

;; C++
(add-hook 'c++-mode-hook
          (lambda ()
            (c-set-style "linux")
            (setq tab-width 8)
            (setq c-basic-offset 8)
            (setq indent-tabs-mode t)))

;; Python
(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq python-indent-offset 4)
            ;; ...
            ))

;; Rust
(add-hook 'rust-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)
            (setq tab-width 8)
            ;; ...
            ))

;;; Window Movement
(windmove-default-keybindings)

