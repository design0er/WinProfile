;;;for bootstrap emacs package system.
;;;install package before use.
;;;simple and stable.
;;;set package archives
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)
(package-refresh-contents)
(setq my-packages '(use-package
					 elpy
					 magit
					 evil
					 evil-leader
					 evil-tabs
					 ivy
					 swiper
					 counsel
					 org-mind-map
					 org-bullets
					 markdown-mode
					 flymd
					 flycheck
					 elpy
					 geiser
					 graphviz-dot-mode
					 xclip
					 paredit))
(dolist (p my-packages) (print p))
(dolist (p my-packages) (package-install p))
