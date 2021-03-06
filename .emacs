(load-file "~/.emacs.d/epy/epy-init.el")
(load-file "~/.emacs.d/exec-path-from-shell/exec-path-from-shell.el")
(load-file "~/.emacs.d/vlfi/vlf-setup.el")
(load-file "~/.emacs.d/vlfi/vlf-tune.el")
(load-file "~/.emacs.d/vlfi/vlf-base.el")
(load-file "~/.emacs.d/vlfi/vlf.el")
(load-file "~/.emacs.d/vlfi/vlf-occur.el")
(load-file "~/.emacs.d/vlfi/vlf-write.el")
(load-file "~/.emacs.d/vlfi/vlf-follow.el")
(load-file "~/.emacs.d/vlfi/vlf-search.el")
(load-file "~/.emacs.d/cmake-mode.el")

(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/matlab")
(load-library "matlab-load")
(matlab-cedet-setup)

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-cleanup-list
   (quote
    (brace-else-brace brace-elseif-brace brace-catch-brace one-liner-defun defun-close-semi list-close-comma scope-operator compact-empty-funcall)))
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(custom-enabled-themes (quote (wombat)))
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(latex-run-command "latex --output-format=pdf")
 '(matlab-mode-install-path (quote ("/Applications/MATLAB_R2016a.app/bin/toolbox/")))
 '(matlab-shell-ask-MATLAB-for-completions t)
 '(matlab-shell-command "/Applications/MATLAB_R2016a.app/bin/matlab")
 '(matlab-shell-command-switches (quote ("-nodesktop -nosplash")))
 '(package-selected-packages
   (quote
    (auto-complete starter-kit-eshell smooth-scroll rainbow-delimiters magit latex-preview-pane)))
 '(tex-dvi-view-command
   (quote
    (cond
     ((eq window-system
          (quote x))
      "doc-view")
     ((eq window-system
          (quote w32))
      "doc-view")
     (t "dvi2tty * | cat -s")))))
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

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)


(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'vlf-setup)
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(latex-preview-pane-enable)
