;;; init-evil.el --- Evil support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package evil
  :ensure t
  :init
  (progn
    (evil-mode t)
    ;; shortcuts config
    (evil-define-key 'normal go-mode-map "gd" 'godef-jump)
    (evil-define-key 'normal go-mode-map "gb" 'xref-pop-marker-stack)
    (define-key evil-normal-state-map (kbd "gc") 'comment-line)
    )
  )

;; fonts config
(set-frame-font "Jetbrains Mono-15")

(provide 'init-evil)
;;; init-evil.el ends here
