(package-initialize)
(require 'use-package)

(use-package general
  :config
  (setq ring-bell-function 'ignore)
  (setq package-archives '(("melpa" . "https://melpa.org/packages/") ;; Sets default package repositories
                           ("org" . "https://orgmode.org/elpa/")
                           ("elpa" . "https://elpa.gnu.org/packages/")
                           ("nongnu" . "https://elpa.nongnu.org/nongnu/"))) ;; For Eat Terminal
  ;; (electric-pair-mode t)
  (setq inhibit-startup-message t)
  (setq inhibit-startup-screen t)
  (setq inhibit-startup-buffer-menu t)
  :custom
  (menu-bar-mode nil)
  (scroll-bar-mode nil)
  (tool-bar-mode nil)
  )

(use-package cus-edit
  :custom `((custom-file . ,(locate-user-emacs-file "custom.el"))))

(use-package evil
  :ensure t
  :init (evil-mode t))

;; colorscheme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

;; ;; dashboard
;; (use-package dashboard
;;   :ensure t
;;   :config
;;   (dashboard-setup-startup-hook)
;;   )

;; (use-package doom-modeline
;;   :ensure t
;;   :hook (after-init . doom-modeline-mode))

;; ;; auto kakko pair
;; (use-package puni
;;   :ensure t
;;   :config
;;   (electric-pair-mode t))
