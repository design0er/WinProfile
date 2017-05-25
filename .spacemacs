;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     git
     markdown
     org
     html
     csharp
     javascript
     chinese
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         spacemacs-light
                         spacemacs-dark
                         adwaita
                         alect-light
                         sanityinc-solarized-light
                         professional
                         light-blue
                         solarized-dark
                         solarized-light
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '(
                               "Inziu Iosevka Slab SC"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; Default value is `cache'.
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  (setq-default dotspacemacs-line-numbers 'relative)
  ;; User initialization goes here
  )

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (setq os-etc-path "d:/etc/emacs-etc/")
  (setq hunter-snippet-path "d:/etc/emacs-etc/h-snippet/")
  (setq os-plugin-path "d:/etc/emacs-plugin/")
  (setq os-git-path "d:/GitHub/")
  (setq os-new-git-path "d:/github/")
  (setq sbcl-exe-path "e:/sbcl/sbcl.exe")
  (setq everything-es-exe-path "c:/pro/es/es.exe")

  (spacemacs//set-monospaced-font  "Inziu Iosevka Slab SC" "Yahei Monaco" 14 14)

  (global-set-key (kbd "C-c o") 'multi-occur-in-matching-buffers)

  (global-set-key "\C-c L" 'org-insert-link-global)
  (global-linum-mode)
  (linum-relative-on)
  (server-start)
  (setq dotspacemacs-auto-resume-layouts t)
  (setq powerline-default-separator 'wave)
  (setq-default evil-escape-key-sequence "jk")

  (setq url-proxy-services
        '(("no_proxy" . "^\\(localhost\\|10.*\\)")
          ("http" . "127.0.0.1:1080")
          ("https" . "127.0.0.1:1080")))

  (setq socks-server '("Default server" "127.0.0.1" 1080 5))
  (setq url-gateway-method 'socks)


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
  (setq org-default-notes-file "d:\\hunter\\Dev\\org\\capture.org")
  
  ;;;(global-set-key "\C-c o" 'org-open-at-point-global)

;;; By default the list is set to ("◉" "○" "✸" "✿").
  (setq org-bullets-bullet-list '("■" "◆" "▲" "▶" "◉" "○" "✸" "✿"))
  ;; Org Headline Bullet Style (From Level 0 to Level 20)

;;  (setq org-bullets-bullet-list '("⓪" "①" "②" "③"
;;                                  "④" "⑤" "⑥" "⑦"
;;                                  "⑧" "⑨" "⑩" "⑪"
;;                                  "⑫" "⑬" "⑭"
;;                                  "⑮" "⑯" "⑰"
;;                                  "⑱" "⑲" "⑳"))

  (setq-default frame-title-format "%b (%f)")

  ;;;org mode
;;(custom-set-variables
;; ;; custom-set-variables was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; '(ansi-color-faces-vector
;;   [default default default italic underline success warning error]))
;;(custom-set-faces
;; ;; custom-set-faces was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
;; '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
;; '(org-default ((t (:inherit default))))
;; '(org-level-1 ((t (:inherit variable-pitch :foreground "#cb4b16" :height 1.1))))
;; '(org-level-2 ((t (:inherit bold :foreground "#2d9574"))))
;; '(org-level-3 ((t (:foreground "#67b11d" :weight normal))))
;; '(org-level-4 ((t (:foreground "#b1951d")))))
  )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
