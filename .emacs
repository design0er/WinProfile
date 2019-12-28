(package-initialize)

(load-file (concat (getenv "HOME") "/basic.el"))
;(load-file (concat (getenv "HOME") "util.el"))

;;; Windows NT
(cl-case system-type
  ('windows-nt (load-file (concat (getenv "HOME") "/winnt.el")))
  ('gnu/linux (load-file (concat (getenv "HOME") "/unix.el")))
  ('darwin (load-file (concat (getenv "HOME") "/macos.el"))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
	("274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "7e512f0d8a87f1f4b0bf4d995b4ae1aa4ed1d9ad160f9f88afc774507afb084c" "1bd68bb3fff9187000a48aac28682c11558d94be49ef13cd901c0fc519d74c67" default)))
 '(package-selected-packages
   (quote
	(dired-subtree omnisharp ggtags projectile writeroom-mode objed flymd sr-speedbar htmlize dracula-theme avy counsel ivy markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
