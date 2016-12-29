
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))



;; My Stuff
(global-hl-line-mode +1)

(find-file "~/Dropbox/.notes.org")
(find-file "~/.emacs.d/init.el")

(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(ido-mode (quote buffer) nil (ido))
 '(nyan-mode t)
 '(package-selected-packages
   (quote
    (auto-complete fiplr markdown-preview-mode powerline php-mode molokai-theme nyan-mode color-theme-sanityinc-solarized gist multiple-cursors ## dash exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; Global Text Scale Mode


  (define-globalized-minor-mode 
    global-text-scale-mode
    text-scale-mode
    (lambda () (text-scale-mode 1)))
  
  (defun global-text-scale-adjust (inc) (interactive)
    (text-scale-set 1)
    (kill-local-variable 'text-scale-mode-amount)
    (setq-default text-scale-mode-amount (+ text-scale-mode-amount inc))
    (global-text-scale-mode 1)
  )
  (global-set-key (kbd "C-0")
                  '(lambda () (interactive)
                     (global-text-scale-adjust (- text-scale-mode-amount))
                     (global-text-scale-mode -1)))
  (global-set-key  (kbd "C-=") 
                  '(lambda () (interactive) (global-text-scale-adjust 1)))
  (global-set-key (kbd "C--")
                  '(lambda () (interactive) (global-text-scale-adjust -1)))
  

					; Solarized

; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; themes are neat
;; themes are neat
;; themes are neat
(load-theme 'sanityinc-solarized-dark t)
; (load-theme 'molokai t)

; Nyan via melpa
(nyan-mode 1)

; Multiple cursors via melpa
(require 'multiple-cursors) ;on 
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

; eShell is shel
(defun new-eshell () (interactive) (eshel))

; coding necesity
(show-paren-mode t)


;; fonts are neat
  (set-face-font 'menu "terminus -r-*-*-12-*-*-*-c-*-iso8859-1")
  (set-face-font 'default "terminus -r-*-*-14-*-*-*-c-*-iso8859-1")



(setq mac-option-modifier 'meta)


;; erc
;; This causes ERC to connect to the Freenode network upon hitting
;; C-c e f.  Replace MYNICK with your IRC nick.

 (require 'tls)

 (setq erc-hide-list '("PART" "QUIT" "JOIN"))
  (setq erc-autojoin-channels-alist '(("freenode.net"
        "#org-mode"
        "#hacklabto"
        "#emacs"
         "#emacs-beginners"
         "#emacs-ops"))
 erc-server "irc.freenode.net"
 erc-nick "netkam2")

;; ido for buffers
(ido-mode 1)
(ido-mode 'buffers) ; leave my dired alone

;; persist
(savehist-mode 1) 

;; laptops
(display-battery-mode 1)

;; kinda maximised on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; oh no modeline
 (setq mode-line-format
          (list
           ;; value of `mode-name'
           "%m: "
           ;; value of current buffer name
           "buffer %b, "
           ;; value of current line number
           "line %l "
           "-- user: "
           ;; value of user
           (getenv "USER")))

;; powerline
(require 'powerline)
(powerline-default-theme)

;; fiplr (ctrl+p)
(setq fiplr-ignored-globs '((directories (".git" ".svn"))
                            (files ("*.jpg" "*.png" "*.zip" "*~"))))

(global-set-key (kbd "M-p") 'fiplr-find-file)

;; keybindings i hope to remember
(global-set-key (kbd "C-;") 'pop-global-mark)

(global-set-key [C-S-tab] 'previous-buffer)

(global-set-key [C-tab] 'next-buffer)

(global-set-key (kbd "C-S-K") 'kill-region)


;; autocomplete m-x package-install auto-complete
(ac-config-default)
