(global-set-key (kbd "M-/") 'dabbrev-expand)

(global-set-key (kbd "M-C-/") 'dabbrev-completion)

(use-package hippie-exp
  ;; binding to replace dabbrev-expand with hippie-exp
  :bind ([remap dabbrev-expand] . hippie-expand)
  :commands (hippie-expand)
  :config
  (setq hippie-expand-try-functions-list
	'(try-expand-dabbrev
	  try-expand-dabbrev-all-buffers
	  try-expand-dabbrev-from-kill
	  try-complete-lisp-symbol-partially
	  try-complete-lisp-symbol
	  try-complete-file-name-partially
	  try-complete-file-name
	  try-expand-all-abbrevs
	  try-expand-list
	  try-expand-line
	  )))

completion-at-point-functions ;; contains a list of functions to use for completions

(require 'elpy)
(elpy-enable)

(use-package company
  :defer 2
  :diminish
  :custom
  (company-begin-commands '(self-insert-command))
  (company-idle-delay .1)
  (company-minimum-prefix-length 2)
  (company-show-numbers t)
  (company-tooltip-align-annotations 't)
  (global-company-mode t))

(use-package company-box
  :after company
  :diminish
  :hook (company-mode . company-box-mode))

(use-package diminish)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
    ;; Comment/uncomment this line to enable MELPA Stable if desired.
    ;; See `package-archive-priorities` and `package-pinned-packages`.
    ;; Most users will not need or want to do this.
    ;; (add-to-list 'package-archives
;;              '("melpa-stable""https://stable.melpa.org/packages/") t)
    (package-initialize)

(set-face-attribute 'default nil
    :font "Jetbrains Mono"
    :height 90
    :weight 'medium)
  (set-face-attribute 'variable-pitch nil
    :font "Dejavu Sans"
    :height 100
    :weight 'medium)
  (set-face-attribute 'fixed-pitch nil
    :font "Jetbrains Mono"
    :height 90
    :weight 'medium)
  ;; Makes commented text and keywords italics.
  ;; This is working in emacsclient but not emacs.
  ;; Your font must hava na italic face available.
  (set-face-attribute 'font-lock-comment-face nil
    :slant 'italic)
  (set-face-attribute 'font-lock-keyword-face nil
    :slant 'italic)

;; this sets the default font on all graphical frames created after restarting Emacs
;; Does the same thing as 'set-face-attribute default' above, but emacsclient
;; are not right unless I also add this method of setting the default font.
  (add-to-list 'default-frame-alist '(font . "Monospace"))

  ;; Uncomment the following line if line spacing nees adjusting
  (setq-default line-spacing 0.12)

(use-package flycheck
:ensure t
:defer t
:diminish
:init (global-flycheck-mode))

(delete-selection-mode 1)    ;; You can select text and delete it by typing.
(electric-indent-mode -1)    ;; Turn off the weird indenting that Emacs does by default.
(electric-pair-mode 1)       ;; Turns on automatic parens pairing
;; The following prevents <> from auto-pairing when electric-pair-mode is on.
;; Otherwise, org-tempo is broken when you try to <s TAB...
(add-hook 'org-mode-hook (lambda ()
           (setq-local electric-pair-inhibit-predicate
                   `(lambda (c)
                  (if (char-equal c ?<) t (,electric-pair-inhibit-predicate c))))))
(global-auto-revert-mode t)  ;; Automatically show changes if the file has changed
(global-display-line-numbers-mode 1) ;; Display line numbers
(global-visual-line-mode t)  ;; Enable truncated lines
(menu-bar-mode -1)           ;; Disable the menu bar 
(scroll-bar-mode -1)         ;; Disable the scroll bar
(tool-bar-mode -1)           ;; Disable the tool bar
(setq org-edit-src-content-indentation 0) ;; Set src block automatic indent to 0 instead of 2.

(recentf-mode 1) ;;Enable recent files display

(save-place-mode 1) ;;Remember and restore the last cursor location of opened files

;; Don't pop up UI dialogs when prompting
(setq use-dialog-box nil)


;; YA snippets

(use-package hl-todo
:hook ((org-mode . hl-todo-mode)
       (prog-mode . hl-todo-mode))
:config
(setq hl-todo-highlight-punctuation ":"
      hl-todo-keyword-faces
      `(("TODO"       warning bold)
        ("FIXME"      error bold)
        ("HACK"       font-lock-constant-face bold)
        ("REVIEW"     font-lock-keyword-face bold)
        ("NOTE"       success bold)
        ("DEPRECATED" font-lock-doc-face bold))))

(require 'ivy-rich)
    (ivy-rich-mode 1)


    
(setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)

(add-to-list 'load-path "all-the-icons.el")
(when (display-graphic-p)
  (require 'all-the-icons))

(add-hook 'dired-mode-hook  (lambda () (all-the-icons-dired-mode t)))

(require 'all-the-icons-ivy-rich)
(all-the-icons-ivy-rich-mode 1)

;; ivy mode
(require 'ivy)
(ivy-mode 1)

;; counsel
(require 'counsel)
(counsel-mode 1)

(global-set-key [escape] 'keyboard-escape-quit)

(global-set-key (kbd "C-c C-f") 'neotree-toggle)
  (use-package neotree
  :config
  (setq neo-smart-open t
	neo-show-hidden-files t
	neo-window-width 20
	neo-window-fixed-size nil
	inhibit-compacting-font-caches t
	projectile-switch-project-action 'neotree-projectile-action) 
	;; truncate long file names in neotree
	(add-hook 'neo-after-create-hook
	   #'(lambda (_)
	       (with-current-buffer (get-buffer neo-buffer-name)
		 (setq truncate-lines t)
		 (setq word-wrap nil)
		 (make-local-variable 'auto-hscroll-mode)
		 (setq auto-hscroll-mode nil)))))

;; show hidden files

(use-package dashboard
          :ensure t 
          :init
          (setq initial-buffer-choice 'dashboard-open)
          (setq dashboard-set-heading-icons nil)
          (setq dashboard-set-file-icons t)
          (setq dashboard-banner-logo-title "Franknoris Code Editor")
          (setq dashboard-startup-banner 'logo)
          ;; use standard emacs logo as banner
;;(setq dashboard-startup-banner "/home/dt/.config/emacs/images/emacs-dash.png")  ;; use custom image as banner
 (setq dashboard-center-content t) ;; set to 't' for centered content
          (setq dashboard-items '((recents . 5)
                                  (agenda . 5 )
                                  (bookmarks . 3)
                                  (projects . 3)
                                  (registers . 3)))
 
          :custom
          (dashboard-modify-heading-icons '((recents . "file-text")
                                            (bookmarks . "book")))
          :config
          (dashboard-setup-startup-hook))

(use-package toc-org
   :commands toc-org-enable
   :init (add-hook 'org-mode-hook 'toc-org-enable))

:init (add-hook 'org-mode-hook 'org-indent-mode)
         (use-package  org-superstar)
         (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(eval-after-load 'org-indent '(diminish 'org-indent-mode))

(custom-set-faces
'(org-level-1 ((t (:inherit outline-1 :height 1.50))))
'(org-level-2 ((t (:inherit outline-2 :height 1.06))))
'(org-level-3 ((t (:inherit outline-3 :height 1.05))))
'(org-level-4 ((t (:inherit outline-4 :height 1.04))))
'(org-level-5 ((t (:inherit outline-5 :height 1.03))))
'(org-level-6 ((t (:inherit outline-5 :height 1.02))))
'(org-level-7 ((t (:inherit outline-5 :height 1.01)))))

(require 'org-tempo)

(use-package perspective
  :custom
  ;; NOTE! I have also set 'SCP =' to open the perspective menu.
  ;; I'm only setting the additional binding because setting it
  ;; helps suppress an annoying warning message.
  (persp-mode-prefix-key (kbd "C-c M-p"))
  :init 
  (persp-mode)
  :config
  ;; Sets a file to write to when we save states
  (setq persp-state-default-file "~/.config/emacs/sessions"))

;; This will group buffers by persp-name in ibuffer.
(add-hook 'ibuffer-hook
          (lambda ()
            (persp-ibuffer-set-filter-groups)
            (unless (eq ibuffer-sorting-mode 'alphabetic)
              (ibuffer-do-sort-by-alphabetic))))

;; Automatically save perspective states to file when Emacs exits.
(add-hook 'kill-emacs-hook #'persp-state-save)

(use-package projectile
:config
(projectile-mode 1))

(use-package rainbow-delimiters
:hook ((emacs-lisp-mode . rainbow-delimiters-mode)
       (clojure-mode . rainbow-delimiters-mode)))

(use-package rainbow-mode
   :hook org-mode prog-mode)

(with-eval-after-load 'org
  (load-theme 'monokai t))
  (setq org-src-fontify-natively t)
  (custom-set-faces
   '(org-block-begin-line ((t (:background "#212121"
                               :foreground "#75715E"
                               :weight bold ))))

   '(org-block ((t (:background "#1B1B16"))))

   '(org-block-end-line ((t (:background "#212121"
                             :foreground "#75715E"
                             :weight bold ))))
   '(org-link ((t (:foreground "#829356"
                          :weight bold ))))

   )

;; (set-face-attribute 'default nil :background "#2B1700")

(use-package tldr)

;; Emmet mode e.g p C-j to complete for <p></p>
(require 'emmet-mode)

(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode) ; if you use web-mode

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook 'my-web-mode-hook)
(add-hook 'html-mode-hook 'web-mode)

;; word count mode
(require 'wc-mode)

(use-package which-key
  :init
    (which-key-mode 1)
  :config
  (setq which-key-side-window-location 'bottom
	which-key-sort-order #'which-key-key-order-alpha
	which-key-sort-uppercase-first nil
	which-key-add-column-padding 1
	which-key-max-display-columns nil
	which-key-min-display-lines 6
	which-key-side-window-slot -10
	which-key-side-window-max-height 0.25
	which-key-idle-delay 0.8
	which-key-max-description-length 25
	which-key-allow-imprecise-window-fit t
	which-key-separator " ➙ " ))

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
