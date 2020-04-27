;;; init-use-package.el --- Use-package support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defvar my-packages '(use-package
                         better-defaults)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-refresh-contents)
    (package-install p)
    (message "%s is installed" p)))

(provide 'init-use-package)
;;; init-use-package.el ends here
