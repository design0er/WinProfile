;;;----------------------Index
;;; multi home setting
;;; copy emacs full or unzip official zip file to  dir e:\emacs-26.2-min
;;; copy site-start.el to `e:\emacs-26.2-min\share\emacs\site-lisp\site-start.el`
;;; mkdir e:\emacs-26.2-home\ for home dir. Store config and plugin. 
;;; this will keep c:\Users\design0er\AppData\Roaming\.emacs.d\. (keep Spacemacs legacy.)

;;;;;;;;;;;;;;EDITOR
;;;backend config
;;;UI
;;;font && theme

;;;;;;;;;;;;;;PLUGIN
;;;melpa repo setting
;;;undo-tree:git clone http://www.dr-qubit.org/git/undo-tree.git
;;;evil:vi like state editing
;;;	git clone --depth 1 https://github.com/emacs-evil/evil ~/.emacs.d/evil
;;;evil-leader:git clone https://github.com/cofi/evil-leader.git ~/.emacs.d/evil-leader
;;;org-bullets:git clone https://github.com/sabof/org-bullets.git ~/.emacs.d/org-bullets
;;;helm:bug on windows  
;;;ivy&&swiper&&counsel:package install && mini buffer omni search
;;;avy:fast motion : char / word
;;;markdown:package install
;;;flymd:git clone https://github.com/mola-T/flymd.git ~/.emacs.d/flymd
;;;sr-speedbar

;;;htmlize for org export html

;;;dracula theme
;;;leuven theme

;gc threshold default is 800,000 = 800kb
(setq gc-cons-threshold 800000000)

(setq debug-on-error t)
;(toggle-debug-on-quit)
;(server-start)

;;; proxy
;(setq url-using-proxy t)
;(setq url-proxy-services '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
;                           ("http" . "127.0.0.1:1081")
;			   ("https" . "127.0.0.1:1081")))

;;;----------------------char coding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; backwards compatibility as default-buffer-file-coding-system
;; is deprecated in 23.2.
(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))


;;;----------------------Melpa Repo
(if (version< emacs-version "26.3")
    (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(require 'use-package)

;;;----------------------Font
;;; refer : http://baohaojun.github.io/perfect-emacs-chinese-font.html
;;; refer : http://zhuoqiang.me/torture-emacs.html
;(set-face-attribute 'default nil :font "YaHei Monaco 12")
;(setq face-font-rescale-alist '(("Microsoft Yahei" . 1.2) ("WenQuanYi Zen Hei" . 1.2)))
;
;;(set-face-attribute 'default nil :font "Source Han Sans 10")
;(set-face-attribute 'default nil :font (font-spec))

;; Setting English Font
(setq en-font-size 9)
(set-face-attribute 'default nil :font "Fira Code 9")

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "WenQuanYi Zen Hei Mono")))
(setq face-font-rescale-alist '(("WenQuanYi Zen Hei Mono" . 1.2)("微软雅黑" . 1.2)("Microsoft Yahei" . 1.2) ))

;;; italic
(set-face-font 'italic (font-spec :family "Source Code Pro" :slant 'italic :weight 'normal :size (+ 0.0 en-font-size)))
(set-face-font 'bold-italic (font-spec :family "Source Code Pro" :slant 'italic :weight 'bold :size (+ 0.0 en-font-size)))

(global-font-lock-mode 1)  

;;;使用C-k 包含回车符
(setq-default kill-whole-line t)
;;;以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;;;删除至回收站
(setq delete-by-moving-to-trash t)

(save-place-mode 1) 

;;光标为竖线;方块为box
;(setq-default cursor-type 'bar)
;(setq-default blink-matching-delay 0.5)
;;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(mouse-avoidance-mode 'animate)
(setq blink-cursor-mode nil)
;(custom-set-variables '(blink-cursor-mode nil))

;;;___________bookmark
;(setq bookmark-default-file (concat os-etc-path "emacs.bmk"))
;;;同步更新书签文件或者退出时保存
;(setq bookmark-save-flag 1)

;;;___________view
(setq display-line-numbers 'relative)
(line-number-mode t)                     ;; show line numbers
;;;(column-number-mode t)                   ;; show column numbers
(when (fboundp size-indication-mode)
  (size-indication-mode t))              ;; show file size (emacs 22+)
;;;设置标题栏显示文件的完整路径名
(setq frame-title-format
   '("%S" (buffer-file-name "%f"
    (dired-directory dired-directory "%b"))))
;;;直接打开和显示图片
(auto-image-file-mode)
(setq echo-keystrokes 0.1)
;;关闭起动时的那个“开机画面”
(setq inhibit-startup-message t)
;; Also highlight parens  
(setq show-paren-delay 0  
     show-paren-style 'parenthesis)  
;(setq default-fill-column 80);默认显示 80列

;;; Winner mode
(when (fboundp 'winner-mode)
      (winner-mode 1))
;;;___________UI______________________
(show-paren-mode 1)				
;显示时间
(display-time)
(setq display-time-24hr-format t)
;显示匹配的括号
(show-paren-mode t)
;;;打开就启用 text 模式
(setq default-major-mode 'text-mode)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode -1)

;;;___________ibuffer mode______________________
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;;;----------------------Evil plugin
;;; depend undo-tree
(add-to-list 'load-path "~/.emacs.d/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)


(add-to-list 'load-path "~/.emacs.d/evil")
(setq evil-want-C-u-scroll nil)
(setq evil-want-C-i-jump nil)
(setq evil-disable-insert-state-bindings t)
(require 'evil)

;;; evil leader
(add-to-list 'load-path "~/.emacs.d/evil-leader")
(require 'evil-leader)
;;; enable evil leader before evil-mode.
(global-evil-leader-mode)
(evil-mode 1)
(evil-set-initial-state 'Info-mode 'emacs)
(evil-set-initial-state 'calendar-mode 'emacs)
(evil-set-initial-state 'Image-mode 'emacs)
(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'XREF-mode 'emacs)
(evil-set-initial-state 'Help-mode 'emacs)
(evil-set-initial-state 'Calculator-mode 'emacs)
(evil-leader/set-leader "SPC")

;;;todo:not work
(eval-after-load "evil-mode" '(define-key evil-normal-state-map (kbd "C-o") nil))

(global-evil-tabs-mode t)
(global-unset-key "\C-t")
(global-unset-key "\C-l")
(global-unset-key "\C-o")
(global-set-key "\C-l\C-l" 'recenter-top-bottom)
(setq elscreen-prefix-key "\C-l")
(define-key evil-normal-state-map (kbd "C-0") (lambda() (interactive) (elscreen-goto 0)))
(define-key evil-normal-state-map (kbd "C-1") (lambda() (interactive) (elscreen-goto 1)))
(define-key evil-normal-state-map (kbd "C-2") (lambda() (interactive) (elscreen-goto 2)))
(define-key evil-normal-state-map (kbd "C-3") (lambda() (interactive) (elscreen-goto 3)))
(define-key evil-normal-state-map (kbd "C-4") (lambda() (interactive) (elscreen-goto 4)))
(define-key evil-normal-state-map (kbd "C-5") (lambda() (interactive) (elscreen-goto 5)))
(define-key evil-normal-state-map (kbd "C-6") (lambda() (interactive) (elscreen-goto 6)))
(define-key evil-normal-state-map (kbd "C-7") (lambda() (interactive) (elscreen-goto 7)))
(define-key evil-normal-state-map (kbd "C-8") (lambda() (interactive) (elscreen-goto 8)))
(define-key evil-normal-state-map (kbd "C-9") (lambda() (interactive) (elscreen-goto 9)))
(define-key evil-insert-state-map (kbd "C-0") (lambda() (interactive) (elscreen-goto 0)))
(define-key evil-insert-state-map (kbd "C-1") (lambda() (interactive) (elscreen-goto 1)))
(define-key evil-insert-state-map (kbd "C-2") (lambda() (interactive) (elscreen-goto 2)))
(define-key evil-insert-state-map (kbd "C-3") (lambda() (interactive) (elscreen-goto 3)))
(define-key evil-insert-state-map (kbd "C-4") (lambda() (interactive) (elscreen-goto 4)))
(define-key evil-insert-state-map (kbd "C-5") (lambda() (interactive) (elscreen-goto 5)))
(define-key evil-insert-state-map (kbd "C-6") (lambda() (interactive) (elscreen-goto 6)))
(define-key evil-insert-state-map (kbd "C-7") (lambda() (interactive) (elscreen-goto 7)))
(define-key evil-insert-state-map (kbd "C-8") (lambda() (interactive) (elscreen-goto 8)))
(define-key evil-insert-state-map (kbd "C-9") (lambda() (interactive) (elscreen-goto 9)))

;;; evil state cursor
(setq evil-emacs-state-cursor '((hbar . 2) "red"))
(setq evil-normal-state-cursor '(box   "yellow"))
;(setq evil-motion-state-cursor 'box)  ; █
;(setq evil-visual-state-cursor 'box)  ; █
;(setq evil-normal-state-cursor 'box)  ; █
;(setq evil-insert-state-cursor 'bar)  ; ⎸

;;; combine with helm buffer list `C-x b`
;;; default `ibuffer list `C-x C-b`
;;; evil builtin buffer-switch `C-^`
(global-set-key (kbd "M-n") 'previous-buffer)
(global-set-key (kbd "M-p") 'next-buffer)
(global-set-key (kbd "C-x C-x") 'evil-switch-to-windows-last-buffer)
(global-set-key (kbd "C-x C-m") 'ivy-switch-buffer)


;(global-set-key (kbd "C-") 'evil-scroll-up)

(global-set-key [(control tab)] 'other-window)
(global-set-key [(control shift right)] 'other-window-backward)
;(global-set-key (kbd "M-`") 'other-window-or-frame)
;(global-set-key [?\M-o] 'occur)
(global-set-key (kbd "C-c o") 'occur)

(global-set-key (kbd "M-h") 'evil-window-left)
(global-set-key (kbd "M-j") 'evil-window-down)
(global-set-key (kbd "M-k") 'evil-window-up)
(global-set-key (kbd "M-l") 'evil-window-right)

;;;evil-leader mapping
(evil-leader/set-key "e" 'evil-region)
(evil-leader/set-key "r" 'counsel-recentf)
(evil-leader/set-key "f" 'counsel-find-file)
(evil-leader/set-key "d" 'find-name-dired)
(evil-leader/set-key "b" 'ivy-switch-buffer)
(evil-leader/set-key "i" 'info)
(evil-leader/set-key "k" 'kill-buffer)
;(evil-leader/set-key-for-mode 'emacs-lisp-mode "b" 'byte-compile-file)


;;(global-set-key (kbd "<f7>") 'evil-mode)
;;; change mode-line color by evil state
;(lexical-let ((default-color (cons (face-background 'mode-line)
;								   (face-foreground 'mode-line))))
;  (add-hook 'post-command-hook
;			(lambda ()
;			  (let ((color (cond ((minibufferp) default-color)
;								 ((evil-motion-state-p) '("#ffffff" . "#71142c"))
;								 ((evil-normal-state-p) '("#ffffff" . "#226912"))
;								 ((evil-visual-state-p) '("#ffffff" . "#b81f00"))
;								 ((evil-replace-state-p) '("#ffffff" . "#de770d"))
;								 ((evil-operator-state-p) '("#ffffff" . "#a511e8"))
;								 ((evil-insert-state-p) '("#ffffff" . "#287636"))
;								 ((evil-emacs-state-p)  '("#ffffff" . "#444488"))
;								 ((buffer-modified-p)   '("#ffffff" . "#123456"))
;								 (t default-color))))
;				(set-face-background 'mode-line (car color))
;				(set-face-foreground 'mode-line (cdr color))))))

;helm :use ivy on Windows
;(require 'helm-config)
;(global-set-key (kbd "M-x") 'helm-M-x)
;(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
;(global-set-key (kbd "C-x C-f") #'helm-find-files)
;(helm-mode 1)

;ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
(setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x C-r") 'counsel-recentf)
(global-set-key (kbd "C-r") 'counsel-recentf)
(global-set-key (kbd "C-m") 'ivy-switch-buffer)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
;(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(global-set-key (kbd "C-c C-h") 'winner-undo)
(global-set-key (kbd "C-c C-l") 'winner-redo)
;;;avy
(global-set-key (kbd "C-3") 'avy-goto-char)
(global-set-key (kbd "C-4") 'avy-goto-char-2)
(global-set-key (kbd "C-2") 'avy-goto-line)

;;;org mode
(require 'org)
(setq org-image-actual-width nil)

(global-set-key (kbd "C-c o") 'multi-occur-in-matching-buffers)

(global-set-key "\C-c L" 'org-insert-link-global)
;(global-set-key (kbd "C-c t") 'org-time-stamp)

;remove for other use
(define-key org-mode-map (kbd "M-h") nil)
(define-key org-mode-map (kbd "M-l") nil)
(define-key org-mode-map (kbd "M-j") nil)
(define-key org-mode-map (kbd "M-k") nil)

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

;;;(org-babel-do-load-languages 'org-babel-load-languages '((csharp . t)))
;;;(setq org-default-notes-file "e:\\hunter\\Dev\\org\\capture.org")
(cl-case system-type
  ('windows-nt (setq os-capture-path "e:\\hunter\\DEV\\my-mind\\org\\"))
  ('gnu/linux (setq os-capture-path "/home/hunter/work/my-mind/org/"))
  ('darwin (setq os-capture-path "todo")))

(setq org-default-notes-file (concat os-capture-path "my-capture.org"))

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

;; Org Headline Bullet Style (From Level 0 to Level 20)

(add-to-list 'load-path "~/.emacs.d/org-bullets")
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;(setq org-bullets-bullet-list '("⓪" "①" "②" "③"
;								"④" "⑤" "⑥" "⑦"
;                                "⑧" "⑨" "⑩" "⑪"
;                                "⑫" "⑬" "⑭"
;                                "⑮" "⑯" "⑰"
;                                "⑱" "⑲" "⑳"))

;(setq org-bullets-bullet-list '("☯" "☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷"))
(setq org-bullets-bullet-list '("Ω" "Ⅰ" "Ⅱ" "Ⅲ" "Ⅳ" "Ⅴ" "Ⅵ" "Ⅶ" "Ⅷ" "Ⅸ" ))

(setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
                               ("PAUSED" . (:foreground "white" :background "#2E8B57"  :weight bold))
                               ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))
			       ("archived" . (:foreground "white" :background "#00CC66" :weight bold))))
;  (setq-default frame-title-format "%b (%f)")

;tex
(setq-default TeX-engine 'xetex)

;linum
(require 'linum)
(setq linum-format "%4d \u2502 ")
(setq linum-disabled-modes-list
	  '(eshell-mode
		wl-summary-mode
		compilation-mode
		org-mode))
(defun linum-on ()
  (unless (or (minibufferp)
			  (member major-mode linum-disabled-modes-list))
	(linum-mode 1)))

;;;desktop mode
;(desktop-save-mode 1)
;(load "desktop")
;(desktop-load-default)
;(desktop-read)

;;;session
;(require 'session)
;(add-hook 'after-init-hook 'session-initialize)
;(setq session-use-package 1)

;;;dired
;文件管理器
(global-set-key [f5] 'dired-jump)
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-listing-switches "-laGh1v --group-directories-first --time-style \"+%Y-%m-%d %H:%M:%S\"")

(setq directory-listing-before-filename-regexp
      (purecopy (concat "\\([0-2][0-9]:[0-5][0-9] \\)\\|"
                        directory-listing-before-filename-regexp)))
(setq dired-dwim-target t)
(add-hook 'dired-mode-hook (lambda ()
  (interactive)
  (make-local-variable  'dired-sort-map)
  (dired-hide-details-mode)
  ;(dired-sort-toggle-or-edit)
  (setq dired-sort-map (make-sparse-keymap))
  ;(define-key dired-mode-map "s" dired-sort-map)
  (define-key dired-sort-map "s"
              '(lambda () "sort by Size"
                (interactive) (dired-sort-other (concat dired-listing-switches "S"))))
  (define-key dired-sort-map "x"
              '(lambda () "sort by eXtension"
                 (interactive) (dired-sort-other (concat dired-listing-switches "X"))))
  (define-key dired-sort-map "t"
              '(lambda () "sort by Time"
                 (interactive) (dired-sort-other (concat dired-listing-switches "t"))))
  (define-key dired-sort-map "n"
              '(lambda () "sort by Name"
                 (interactive) (dired-sort-other (concat dired-listing-switches ""))))))

(defun xah-open-in-external-app (&optional @fname)
  "Open the current file or dired marked files in external app.
The app is chosen from your OS's preference.
When called in emacs lisp, if @fname is given, open that.
URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2019-11-04"
  (interactive)
  (let* (
         ($file-list
          (if @fname
              (progn (list @fname))
            (if (string-equal major-mode "dired-mode")
                (dired-get-marked-files)
              (list (buffer-file-name)))))
         ($do-it-p (if (<= (length $file-list) 5)
                       t
                     (y-or-n-p "Open more than 5 files? "))))
    (when $do-it-p
      (cond
       ((string-equal system-type "windows-nt")
        (mapc
         (lambda ($fpath)
           (w32-shell-execute "open" $fpath)) $file-list))
       ((string-equal system-type "darwin")
        (mapc
         (lambda ($fpath)
           (shell-command
            (concat "open " (shell-quote-argument $fpath))))  $file-list))
       ((string-equal system-type "gnu/linux")
        (mapc
         (lambda ($fpath) (let ((process-connection-type nil))
                            (start-process "" nil "xdg-open" $fpath))) $file-list))))))

(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "<C-return>") 'xah-open-in-external-app)
  ;(define-key dired-mode-map "n" 'dired-subtree-insert)
  ;(define-key dired-mode-map "u" 'dired-subtree-remove)
  (define-key dired-mode-map "i" 'xah-open-in-external-app)
  (define-key dired-mode-map "h" 'dired-up-directory)
  (define-key dired-mode-map "l" 'dired-find-alternate-file)
  (define-key dired-mode-map "k" 'dired-previous-line)
  (define-key dired-mode-map "j" 'dired-next-line))

(with-eval-after-load 'ggtags
  (define-key dired-mode-map (kbd "<M-.>") 'dired-next-line))

(setq dired-listing-switches "-alh")

;(use-package dired-subtree
;  :config
;  (bind-keys :map dired-mode-map
;             ("i" . dired-subtree-insert)
;             (";" . dired-subtree-remove)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;           program         ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;___________ c mode______________________
(setq c-default-style '((c-mode . "k&r") (other . "gnu")))
(setq c-basic-offset 4)

(setq-default c-electric-flag t)
;;tab设置4个字符
(setq-default tab-width 4)

(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
	 (column (c-langelem-2nd-pos c-syntactic-element))
	 (offset (- (1+ column) anchor))
	 (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

;;;(add-hook 'c-mode-hook
;;;          (lambda ()
;;;            (let ((filename (buffer-file-name)))
;;;              ;; Enable kernel mode for the appropriate files
;;;              (when (and filename
;;;                         (string-match (expand-file-name "~/src/linux-trees")
;;;                                       filename))
;;;                (setq indent-tabs-mode t)
;;;                (c-set-style "linux-tabs-only")))))

;;;(require 'ctypes)
;;;(setq ctypes-write-types-at-exit t)
;;;(ctypes-read-file nil nil t t)
;;;(ctypes-auto-parse-mode 1)

(global-set-key [f6] 'eval-region)
(global-set-key [(shift f6)] 'eval-buffer)

;;;scroll 
(defmacro global-set-key* (keys &rest body)
  `(global-set-key ,keys (lambda () (interactive) ,@body)))
(global-set-key* [(shift control n)] (next-line) (scroll-up 1))
(global-set-key* [(shift control p)] (previous-line) (scroll-down 1))

;;;----------------------Theme
;;;solarized theme
;(add-to-list 'custom-theme-load-path (concat os-git-path "emacs-color-theme-solarized"))
;(load-theme 'solarized-dark t)
;(load-theme 'solarized-light t)

;;; leuven theme
;;; buildin light
;;; good for org mode and ... 
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-leuven-theme")
;(load-theme 'leuven t) 
;(load-theme 'leuven-dark t) 

;;; builtin theme
;;; for : dark / night
;(load-theme 'deeper-blue t)

;;; default tango theme : dark theme but less dark of bg color, almost a light bright theme.
;(load-theme 'tango-dark t)

;;; dracula : dark theme for many app, protable
;;; package-install : dracula-theme
;


(defun user-select-theme (c)
  "Prompt user to enter a char, for custom load theme."
  (interactive "cEnter theme char,light 1,2,3,4 ----> darker:")
  (cond ((string= 'c "b") (load-theme 'light-blue t))
		((string= 'c "c") (load-theme 'dracula t))
		((string= 'c "d") (load-theme 'deeper-blue t))
		((string= 'c "a") (set-background-color "#C7C6C6"))))
(set-background-color "#C7C6C6")

(defun my-resize-margins ()
  (interactive)
  (let ((margin-size (/ (- (frame-width) 140) 2)))
    (set-window-margins nil margin-size margin-size)))
(defun my-restore-margins ()
  (interactive)
  (set-window-margins nil 0 0))
(global-set-key (kbd "C--") 'my-resize-margins)
(global-set-key (kbd "C-=") 'my-restore-margins)

;;; quiet, please! No dinging!
(setq visible-bell nil)

(global-set-key (kbd "C-;") 'set-mark-command)
;(global-set-key (kbd "C-1") `linum-mode)
		
(global-set-key (kbd "<f11>") 'follow-delete-other-windows-and-split)
;(global-set-key (kbd "") 'follow-delete-other-windows-and-split)
(global-set-key [(ctrl f4)] 'kill-buffer)
;(global-set-key (kbd "<f11>") 'follow-mode)


;;; markdown
(defun my-md-mode-hook ()
  (set-face-font 'markdown-inline-code-face (font-spec :family "Source Code Pro" :weight 'normal :size (+ 0.0 en-font-size)))
  (set-face-font 'markdown-pre-face (font-spec :family "Source Code Pro" :weight 'normal :size (+ 0.0 en-font-size)))
  (set-face-font 'markdown-code-face (font-spec :family "Source Code Pro" :weight 'normal :size (+ 0.0 en-font-size)))
  )
(add-hook 'markdown-mode-hook 'my-md-mode-hook)
(setq markdown-command "pandoc")

;;; flymd
(add-to-list 'load-path "~/.emacs.d/flymd")
(require 'flymd)
(defun my-flymd-browser-function (url)
  (let ((browse-url-browser-function 'browse-url-firefox))
	(if (string-equal system-type "windows-nt")
		(setq url (concat "file:///" url)))
	(browse-url url)))
(setq flymd-browser-open-function 'my-flymd-browser-function
	  flymd-output-directory (expand-file-name "~/.emacs.d/.cache")
	  flymd-close-buffer-delete-temp-files t)

;;; sr-speedbar
(global-set-key (kbd "M-1") 'sr-speedbar-toggle)
(setq sr-speedbar-width-x 140)
(setq sr-speedbar-max-width 440)
(setq speedbar-use-images nil)

;;; objed
;; (objed-mode)

;;; writeroom
;package-install
(setq writeroom-width 96)
(setq writeroom--mode-line-showing t)

;;; projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)

;;; Programming

;;; c#
(add-hook 'csharp-mode-hook 'omnisharp-mode)

;;; python

(elpy-enable)
