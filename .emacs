(load-file "~/.emacs.d/epy/epy-init.el")
(load-file "~/.emacs.d/matlab/matlab-load.el")
(load-file "~/.emacs.d/matlab/matlab.el")
(load-file "~/.emacs.d/exec-path-from-shell/exec-path-from-shell.el")
(load-file "~/.emacs.d/vlfi/vlf-setup.el")
(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-cleanup-list (quote (brace-else-brace brace-elseif-brace brace-catch-brace one-liner-defun defun-close-semi list-close-comma scope-operator compact-empty-funcall)))
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(custom-enabled-themes (quote (wombat)))
 '(global-linum-mode t)
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Use Emacs terminfo, not system terminfo
;;(setq system-uses-terminfo nil)

;; Use 256 color term
(setenv "TERM" "xterm-256color")

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'vlf-setup)
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)
