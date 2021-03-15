;;; -*- Mode: Emacs-Lisp; Coding: utf-8; -*-


(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
(package-initialize)

;;;; Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(desktop-path (quote ("~")))
 '(desktop-save t)
 '(package-selected-packages
   (quote
    (go-mode powerline ac-geiser groovy-mode yaml-mode ledger-mode persistent-scratch ox-reveal cyberpunk-theme color-theme-modern tao-theme punpun-theme omtose-phellack-theme peacock-theme darktooth-theme dracula-theme calfw geiser paredit circe magit helm-projectile helm org-gcal org-bullets web-mode py-autopep8 elpy fancy-narrow centered-window-mode yasnippet))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;; The looks

(if (featurep 'tool-bar)
  (tool-bar-mode -1))

(if (and (member window-system '(ns x))
         (featurep 'scroll-bar))
  (scroll-bar-mode -1))

(if (featurep 'tooltip)
  (tooltip-mode -1))

(column-number-mode 1)

;; (desktop-save-mode 1)

;; (setq initial-frame-alist '((fullscreen . maximized)))

(setq default-frame-alist '((font . "Consolas-17")))

;;;; Global defaults

(setq cursor-in-non-selected-windows nil)

(setq echo-keystrokes 0.01)

(setq inhibit-startup-screen t)

(setq initial-scratch-message "")

(setq scroll-conservatively 1337)

(setq show-paren-delay 0)

(setq vc-handled-backends nil)

;; I pretend to know what I'm doing
(setq disabled-command-function nil)

(setq browse-url-browser-function 'eww-browse-url)

(setq make-backup-files nil)
;; (setq auto-save-file-name-transforms `((".*" ,temporary-file-directory)))

;;;; Persistent scratch
(setq persistent-scratch-autosave-interval 60)
(persistent-scratch-setup-default)

;;;; Global keys not specific to modes

(global-set-key (kbd "M-o") 'other-window)

;;; Buffer local variables

(setq-default indent-tabs-mode nil)

;;;; Private stuff: user name, e-mail address, credentials

; (load-file "~/.emacs.d/private.el")

;;;; Fancy Narrow

(when (package-installed-p 'fancy-narrow)
  (defvar fancy-narrow-map (make-sparse-keymap))
  (define-key ctl-x-map "f" fancy-narrow-map)
  (define-key fancy-narrow-map "w" 'fancy-widen)
  (define-key fancy-narrow-map "d" 'fancy-narrow-to-defun)
  (define-key fancy-narrow-map "p" 'fancy-narrow-to-page)
  (define-key fancy-narrow-map "r" 'fancy-narrow-to-region))

;;;; Theme

(load-theme 'cyberpunk t)

;;;; Dired+

(setq diredp-hide-details-initially-flag nil)

;; (require 'dired+)

(add-hook 'dired-mode-hook
	  (lambda ()
	    (dired-omit-mode)))

(eval-after-load "dired+"
  '(progn
     (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
     (define-key dired-mode-map (kbd "^") 'diredp-up-directory-reuse-dir-buffer)
     (define-key dired-mode-map (kbd "a") 'dired-find-file)))

;;;; Go
(add-to-list 'exec-path "~/go/bin")

(add-to-list 'exec-path "/usr/local/bin")

(setq-default go-command "/usr/local/bin/go")

(setq gofmt-command "~/go/bin/goimports")

(setenv "PATH"
        "/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_14:/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_14:/usr/local/bin:/Users/pbarabas/go/bin")

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode t)))

;;;; yasnippet

(require 'yasnippet)

;;;; Python

;; Required pip libraries: jedi flake8 importmagic autopep8 yapf

(elpy-enable)

(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(add-hook 'python-mode-hook
          (lambda ()
            (setq fill-column 79)
            (setq show-trailing-whitespace t)
            (setq require-final-newline nil)
            ;; (setq elpy-rpc-python-command "python3")
            ;; (elpy-use-ipython "ipython3")
            ))

;;;; TRAMP
(setq tramp-default-method "ssh")

(setq tramp-terminal-type "dumb")

;;;; Groovy
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)

(add-to-list 'auto-mode-alist '("^Jenkinsfile\\'" . groovy-mode))

;;;; HTML
(setq auto-mode-alist
      (append '(("\\.html?\\'" . web-mode))
              auto-mode-alist))

(add-hook 'web-mode-hook
          (lambda ()
            (setq tab-width 4)))

;;;; YAML
(setq auto-mode-alist
      (append '(("\\.ya?ml\\'" . yaml-mode))
              auto-mode-alist))

;;;; EShell

(setq eshell-prompt-function
      (function
       (lambda ()
         (concat (abbreviate-file-name (eshell/pwd))
                 " λ "))))

(setq eshell-prompt-regexp
      "^.+ λ ")

;;;; Org

;; (setq ix-org-file "~/dev/TODO/TODO.org")

;; (setq org-agenda-files (list ix-org-file
;;                              "~/dev/TODO/gcal.org"))

;; (setq org-publish-project-alist
;;       '(("TODO"
;;          :base-directory "~/dev/TODO"
;;          :publishing-directory "~/dev/TODO/html"
;;          :publishing-function org-html-publish-to-html)))

(setq org-bullets-bullet-list
      '("•" "*" "⁃" "*" "‣" "*" "◌"))

(require 'org-bullets)

(add-hook 'org-mode-hook (lambda ()
                           (setq show-trailing-whitespace t)
                           (org-bullets-mode 1)))

;; (set-register ?t (cons 'file  ix-org-file))

;;;; org-gcal

;; (setq org-gcal-file-alist `((,user-mail-address . "~/dev/TODO/gcal.org")))

;; (require 'org-gcal)

;;;; Helm

(require 'helm-config)

(helm-mode 1)

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "§") 'helm-mini)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(setq helm-mode-fuzzy-match t)

(setq helm-completion-in-region-fuzzy-match t)

(setq helm-split-window-in-side-p t)

(setq helm-move-to-line-cycle-in-source t)

(setq ix-boring-buffers '("*Help*"
                          "*Messages*"
                          "*Completions*"
                          "*autopep8 "
                          "*magit"))

(dolist (buffer ix-boring-buffers)
  (add-to-list 'helm-boring-buffer-regexp-list
               (rx-to-string buffer)))

;;;; Projectile

(projectile-mode 1)

(setq projectile-completion-system 'helm)

(helm-projectile-on)

;;;; Magit

;;;;

(require 'uniquify)

(show-paren-mode 1)

(save-place-mode 1)

(defalias 'yes-or-no-p 'y-or-n-p)

(set-register ?r `(file . ,user-init-file))

(setq exec-path (append exec-path '("/usr/local/bin")))

;;;; UTF-8

(prefer-coding-system 'utf-8)

(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING
                                COMPOUND_TEXT
                                TEXT
                                STRING)))

;;;; Circe

;; (setq circe-network-options
;;       `(("Freenode"
;;          :nick ,nickserv-nick
;;          :nickserv-password ,nickserv-password
;;          :user "intprime"
;;          :realname ,user-full-name
;;          :tls nil
;;          )))

;; (setq lui-fill-column 100)

(setq lui-time-stamp-format "[%H:%M] ")

(setq lui-time-stamp-position 'left)

(require 'circe-color-nicks)

(setq circe-color-nicks-min-difference 30)

(setq circe-color-nicks-min-fg-difference 30)

(enable-circe-color-nicks)

;;; Lisp

(eval-after-load "paredit"
  '(progn
     (define-key paredit-mode-map (kbd "RET") 'paredit-newline)
     (define-key paredit-mode-map (kbd "[") 'paredit-open-round)
     (define-key paredit-mode-map (kbd "]") 'paredit-close-round)
     (define-key paredit-mode-map (kbd "M-[") 'paredit-wrap-round)
     (define-key paredit-mode-map (kbd "(") 'paredit-open-square)
     (define-key paredit-mode-map (kbd ")") 'paredit-close-square)))

(setq geiser-active-implementations '(guile))

(mapc (lambda (hook) (add-hook hook (lambda ()
				      (paredit-mode 1)
                                      (setq show-trailing-whitespace t))))
      '(lisp-mode-hook
	emacs-lisp-mode-hook
	scheme-mode-hook))

(add-hook 'eval-expression-minibuffer-setup-hook #'eldoc-mode)

(setq slime-contribs '(slime-fancy
		       slime-asdf))

; (load (expand-file-name "~/Multiplexer/quicklisp/slime-helper.el"))

(setq inferior-lisp-program "sbcl")

(put 'if 'lisp-indent-function nil)
(put 'when 'lisp-indent-function 1)
(put 'unless 'lisp-indent-function 1)
(put 'do 'lisp-indent-function 2)
(put 'do* 'lisp-indent-function 2)
