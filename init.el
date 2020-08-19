(package-initialize)
(require 'package)
;; 加载新的库， M-x package-refresh-contents
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
;; 禁用启动动画
(setq inhibit-startup-message t)
 
;; 关闭滚动条
(scroll-bar-mode -1) 

;; 显示行号
(global-linum-mode t)
;; 加载主题
(load-theme 'wombat)

(package-initialize)
;; (package-refresh-contents)

;; 下载 Evil
;; (unless (package-installed-p 'evil)
;;  (package-install 'evil))

(require 'company)
(company-mode 1)
(add-hook 'after-init-hook 'global-company-mode)
;; 激活 Evil
(require 'evil)
(evil-mode 1)

;; 下载 elpy
;; (unless (package-installed-p 'elpy)
;;   (package-install 'elpy))

;; 激活 Evil
(require 'elpy)
(elpy-enable)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Microsoft YaHei UI" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
