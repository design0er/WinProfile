;;;;;           nt              ;;;;;;;;;;;;
;;;;max-frame
;(defun w32-restore-fra	me ()
;	   "Restore a minimized	frame"
;   (interactive)		
;	(w32-send-sys-command 61728))
;(defun w32-maximize-frame ()
;   "Maximize the current frame"
;	 (interactive)
;     (w32-send-sys-command 61488))
;	 
;(w32-maximize-frame)
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)
(defun toggle-full-screen () (interactive) (shell-command "emacs_fullscreen.exe"))

;;;use-window-key
;(setq w32-pass-lwindow-to-system nil) ;; prevent single keypress from activating Start Menu
;(setq w32-lwindow-modifier 'nil)      ;; make sure it's not used as a modifier
;(define-key key-translation-map (kbd "<lwindow>") 'event-apply-super-modifier)
;(define-key key-translation-map (kbd "<apps>") 'event-apply-alt-modifier)
