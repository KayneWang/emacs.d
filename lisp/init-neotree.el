;;; init-neotree.el --- Neotree support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package all-the-icons :ensure t)

(use-package neotree
  :ensure t
  :requires (all-the-icons evil)
  :config
  (global-set-key [f8] 'neotree-toggle)
  (setq projectile-switch-project-action 'neotree-projectile-action)
  :hook
  (neotree-mode .
                (lambda ()
                  (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
                  (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
                  (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
                  (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
                  (define-key evil-normal-state-local-map (kbd "g") 'neotree-refresh)
                  (define-key evil-normal-state-local-map (kbd "n") 'neotree-next-line)
                  (define-key evil-normal-state-local-map (kbd "p") 'neotree-previous-line)
                  (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
                  (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))

  :custom
  (neo-theme (if (display-graphic-p) 'icons 'arrow))
  )

(provide 'init-neotree)
;;; init-neotree.el ends here
