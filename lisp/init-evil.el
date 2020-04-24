;;; init-evil.el --- Evil support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'evil)
(evil-mode 1)

;; fonts config
(set-frame-font "Jetbrains Mono-15")

;; shortcuts config
(define-key evil-normal-state-map (kbd "gc") 'comment-line)

(provide 'init-evil)
;;; init-evil.el ends here
