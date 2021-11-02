(package-initialize)
(require 'package)
;; 加载新的库， M-x package-refresh-contents
(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                           ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
;; 禁用启动动画
(setq inhibit-startup-message t)
 
;; 关闭滚动条
(scroll-bar-mode -1) 

;; 显示行号
(global-linum-mode t)
;; 加载主题
(load-theme 'wombat)

(package-initialize)


(require 'company)
(company-mode 1)
(add-hook 'after-init-hook 'global-company-mode)
;; 激活 Evil
;; (require 'evil)
;; (evil-mode 1)
;; 设置快捷键
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit evil elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 ;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

