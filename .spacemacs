;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     yaml
     ;python
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;ivy
     helm
     ;common-lisp
     auto-completion
     better-defaults
     emacs-lisp
     ;git
     ;(markdown :variables markdown-live-preview-engine 'vmd)
     org
     ;scheme
     ;html
     ;csharp
     ;javascript
     ;chinese
     ;graphviz
     ;(latex :variables
     ;       latex-build "LaTex"
     ;       latex-enable-auto-fill t
     ;       latex-enable-folding t)
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; syntax-checking
     ;version-control
     ;restclient
     elfeed
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(hyperbole doom-themes dracula-theme flymd org-projectile)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         deeper-blue
                         spacemacs-dark
                         spacemacs-light
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '(
                               "Yahei Monaco"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers '(:relative t
                  :disabled-for-modes dired-mode
                                      doc-view-mode
                                      ;markdown-mode
                                      org-mode
                                      pdf-view-mode
                                      text-mode
                  :size-limit-kb 1000)


   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;;; local file path
  (setq os-etc-path "d:/etc/emacs-etc/")
  (setq hunter-snippet-path "d:/etc/emacs-etc/h-snippet/")
  (setq os-plugin-path "d:/etc/emacs-plugin/")
  (setq os-git-path "d:/GitHub/")
  (setq os-new-git-path "d:/github/")
  (setq sbcl-exe-path "e:/sbcl/sbcl.exe")
  (setq everything-es-exe-path "c:/pro/es/es.exe")

  ;;; Socks Proxy
  (setq url-proxy-services
        '(("no_proxy" . "^\\(localhost\\|10.*\\)")
          ("http" . "127.0.0.1:1080")
          ("https" . "127.0.0.1:1080")))

  (setq socks-server '("Default server" "127.0.0.1" 1080 5))
  (setq url-gateway-method 'socks)

  ;;; for CJK font
  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Yahei Monaco" :size 16)))
  ;;(spacemacs//set-monospaced-font  "IosevkaCC Slab" "Yahei Monaco" 16 14)

  ;;; editor
  (setq history-length 100)
  (put 'minibuffer-history 'history-length 50)
  (put 'evil-ex-history 'history-length 50)
  (put 'kill-ring 'history-length 25)
  ;(global-linum-mode)
  ;(linum-relative-on)
  (server-start)
  (setq dotspacemacs-auto-resume-layouts t)
  (setq powerline-default-separator 'wave)
  (setq-default evil-escape-key-sequence "jk")

  ;;; rss && elfeed
  (require 'elfeed-org)
  (global-set-key (kbd "C-x p") 'elfeed)
  (setf url-queue-timeout 30)

  (elfeed-org)

  ;; Optionally specify a number of files containing elfeed
  ;; configuration. If not set then the location below is used.
  ;; Note: The customize interface is also supported.
  (setq rmh-elfeed-org-files (list
                              "e:\\hunter\\DEV\\org-feed\\feeds.org"
                              "e:\\hunter\\DEV\\org-feed\\rss2.org"
                                    ))

  ;;; Org Mode
  (global-set-key (kbd "C-c o") 'multi-occur-in-matching-buffers)

  (global-set-key "\C-c L" 'org-insert-link-global)
  (global-set-key (kbd "C-c t") 'org-time-stamp)
  (setq org-closed-keep-when-no-todo t)
  (setq org-log-done 'note)
  (setq org-tag-alist '((:startgroup . nil)
                        ("@work" . ?w) ("@home" . ?h)
                        ("@dev" . ?t) ("tool" . ?t)
                        (:endgroup . nil)

                        (:startgroup . nil)
                        ("@10" . ?a)
                        ("@8" . ?c)
                        ("@5" . ?e)
                        ("@2" . ?m)
                        (:endgroup . nil)
                        ))
;  (defun my/org-mode-hook ()
;    "Stop the org-level headers from increasing in height relative to the other text."
;    (dolist (face '(org-level-1
;                    org-level-2
;                    org-level-3
;                    org-level-4
;                    org-level-5
;                    org-level-6
;                    org-level-7
;                    org-level-8
;                    ))
;      (set-face-attribute face nil :family 'Inziu Iosevka Slab SC' :height 1.0)))
;
;  (add-hook 'org-mode-hook 'my/org-mode-hook)
  (setq-default omnisharp-server-executable-path
                "F:\git\omnisharp-server\OmniSharp\bin\Debug\OmniSharp.exe")
  (org-babel-do-load-languages 'org-babel-load-languages '((csharp . t)))
  ;;;(setq org-default-notes-file "e:\\hunter\\Dev\\org\\capture.org")
  (setq org-default-notes-file "e:\\hunter\\Dev\\my-mind\\org\\my-capture.org")

  (setq org-capture-templates
       	'(("l" "Log" entry (file+headline (concat os-capture-path "log.org") "Logs")
           "* org mode capture %?\n %i\n %a")
          ("j" "Journal" entry (file+datetree (concat os-capture-path "journal.org"))
           "* %U - emacs %?\n %i")
          ("m" "mind" entry (file+datetree org-default-notes-file)
           "* %U \n ")
          ("q" "quick" item (file org-default-notes-file)
           "%U :some:%?%i")))
  ;;;(global-set-key "\C-c o" 'org-open-at-point-global)

;;; By default the list is set to ("◉" "○" "✸" "✿").
  ; (setq org-bullets-bullet-list '("■" "◆" "▲" "▶" "◉" "○" "✸" "✿"))
  ;; Org Headline Bullet Style (From Level 0 to Level 20)

(setq org-bullets-bullet-list '("⓪" "①" "②" "③"
                                "④" "⑤" "⑥" "⑦"
                                "⑧" "⑨" "⑩" "⑪"
                                "⑫" "⑬" "⑭"
                                "⑮" "⑯" "⑰"
                                "⑱" "⑲" "⑳"))
(setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
                               ("PAUSED" . (:foreground "white" :background "#2E8B57"  :weight bold))
                               ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))
  (setq-default frame-title-format "%b (%f)")
  (require 'golden-ratio)
  (golden-ratio-mode 0)

  ;;; tex && pdf
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  (setq-default TeX-engine 'xetex)
  (setq-default TeX-master nil)
  (setq TeX-view-program-list
        '(("Sumatra PDF" ("c:\\pro_some\\SumatraPDF\\SumatraPDF.exe -reuse-instance"
                          (mode-io-correlate "-forward-search %b %n ") "%o"
                          )))
        )
  (eval-after-load 'tex
    '(progn
       (assq-delete-all 'output-pdf TeX-view-program-selection)
       (add-to-list 'TeX-view-program-selection '(output-pdf "Sumatra PDF"))))
  (setq default-tab-width 4)

  ;;; hyperbole
  (unless (package-installed-p 'hyperbole)
    (package-refresh-contents)
    (package-install 'hyperbole))
  (require 'hyperbole)


  ;;; doom theme
  (require 'doom-themes)

  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled

  ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
  ;; may have their own settings.

  ; (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config)

  ;;; Dired mode
  (progn
    ;; modify dired keys
    (require 'dired )
    (define-key dired-mode-map (kbd "h") 'dired-up-directory)
    (define-key dired-mode-map (kbd "l") 'dired-find-file)
    (define-key dired-mode-map (kbd "1") 'delete-other-windows)
    (define-key dired-mode-map (kbd "2") 'split-window-below)
    (define-key dired-mode-map (kbd "C-o") 'find-file)
    )
  (global-set-key (kbd "C-7") 'find-name-dired)

  ;;; avy
  (global-set-key (kbd "C-3") 'avy-goto-char)
  (global-set-key (kbd "C-4") 'avy-goto-char-2)
  (global-set-key (kbd "C-2") 'avy-goto-line)

  ;;; dired
  (setq dired-listing-switches "-alh")

  ;;; common lisp
  (setq inferior-lisp-program "d:\\program_h\\sbcl1.4.14\\sbcl.exe")

  ;;; flymd
  (require 'flymd)
  (defun my-flymd-browser-function (url)
    (let ((browse-url-browser-function 'browse-url-firefox))
      (if (string-equal system-type "windows-nt")
          (setq url (concat "file:///" url)))
      (browse-url url)))
  (setq flymd-browser-open-function 'my-flymd-browser-function
        flymd-output-directory (expand-file-name "~/.emacs.d/.cache")
        flymd-close-buffer-delete-temp-files t)
  ;;; projectile
  (projectile-global-mode)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on)
  (setq projectile-indexing-method 'alien)
  )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-safe-themes
   (quote
    ("fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (spinner hyperbole hydra parent-mode projectile pkg-info epl flx highlight smartparens iedit anzu evil goto-chg undo-tree powerline f s bind-map bind-key packed helm avy helm-core popup yaml-mode wgrep smex ivy-hydra lv counsel-projectile counsel swiper ivy slime-company slime common-lisp-snippets geiser elfeed-web elfeed-org elfeed-goodies ace-jump-mode noflet elfeed yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic dracula-theme doom-themes all-the-icons memoize restclient-helm ob-restclient ob-http company-restclient restclient know-your-http-well graphviz-dot-mode flymd vmd-mode company-auctex auctex-latexmk auctex web-mode web-beautify unfill tagedit smeargle slim-mode scss-mode sass-mode pyim pyim-basedict pug-mode pangu-spacing orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download omnisharp flycheck mwim mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc htmlize helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy find-by-pinyin-dired evil-magit magit transient git-commit async with-editor dash emmet-mode diff-hl csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics company coffee-mode auto-yasnippet yasnippet ace-pinyin pinyinlib ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
