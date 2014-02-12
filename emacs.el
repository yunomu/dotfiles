(keyboard-translate ?\C-h ?\C-?)
(keyboard-translate ?\C-? ?\C-h)

(setq backup-inhibited t)
(setq inhibit-startup-message t)

(add-hook 'go-mode-hook '(lambda () (setq tab-width 4)))

(defun for-blog()
  (interactive)
  (flush-lines "^$")
  (replace-regexp "^.*$" "<p>\\&</p>")
  )