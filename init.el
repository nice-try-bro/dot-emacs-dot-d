(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(put 'dired-find-alternate-file 'disabled nil)

;; remap help commands
(global-set-key (kbd "C-?") 'help-command)

(global-set-key (kbd "M-p") 'mark-paragraph)

;; map backspace with C-h and backwards with M-h
(global-set-key (kbd "C-h") 'delete-backward-char)

(global-set-key (kbd "M-h") 'backward-kill-word)

(put 'dired-find-alternate-file 'disabled nil)

;; add ~/.emacs.d/elisp and subdirs to load-path
(let ((default-directory "~/.emacs.d/elisp/"))
      (normal-top-level-add-to-load-path '("."))
      (normal-top-level-add-subdirs-to-load-path))

;; cedet
(load-file "~/.emacs.d/cedet/cedet-devel-load.el")

;; magit
(require 'magit)

;; QT settings
(when (equal system-type 'windows-nt)
  (setenv "QTDIR" "D:/develop/qt/5.0.1/5.0.1/msvc2010/")
  (setenv "QMAKESPEC"  "win32-msvc2010")
  (setenv "PATH" (concat (concat (getenv "QTDIR") "bin") ";" (getenv "PATH")))
  (setenv "PATH" (concat (concat (getenv "QTDIR") "lib") ";" (getenv "PATH")))
  )
