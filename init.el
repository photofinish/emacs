
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list
 'load-path
 (expand-file-name "lisp" user-emacs-directory))

(require 'init-variables)		;参数设置
(require 'init-utils)			;自定义的函数和宏
(require 'init-elpa)			;加载ELPA，并定义了require-package函数
;(require 'init-auto-complete)	        ;自动补全
(require 'init-helm)
(require 'init-ycmd)			;代码补全
(require 'init-yasnippet)		;代码模版
(require 'init-ace-jump)		;光标跳跃
(require 'init-hydra)			;快捷函数
(require 'init-dired)			;文件管理
(require 'init-ruby)			;ruby插件
(require 'init-magit)			;git
(require 'init-react)			;react


(provide 'init)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages (quote (yasnippet auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
