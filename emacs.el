(keyboard-translate ?\C-h ?\C-?)
(keyboard-translate ?\C-? ?\C-h)

(setq backup-inhibited t)
(setq inhibit-startup-message t)

(add-hook 'go-mode-hook '(lambda () (setq tab-width 4)))