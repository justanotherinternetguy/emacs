;; startup
(setq inhibit-startup-message t) ;; no splash
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)


;; fix for wayland emacsclient
(defun signal-restart-server ()
  (interactive)
  (server-force-delete)
  (server-start)
  )
(define-key special-event-map [sigusr1] 'signal-restart-server)
