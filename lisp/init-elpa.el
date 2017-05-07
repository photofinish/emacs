;; init-elpa.el
(require 'package)
;; 增加软件包仓库
(add-to-list 'package-archives '("org" . "http://elpa.emacs-china.org/org/"))
(when (< emacs-major-version 24)
(add-to-list 'package-archives '("gnu" . "http://elpa.emacs-china.org/gnu/")))
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/"))
(add-to-list 'package-archives '("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/"))


;; 定义require-package函数
;; 判断某个包是否安装, 没有则自动从elpa中安装
;; eg:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;init-example.el	        ;;
;; (require-package 'example)   ;;
;; (require 'example-autoloads) ;;
;; (provide 'init-example)      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun require-package (package &optional min-version no-refresh)
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(package-install package)
      (progn
	(package-refresh-contents)
	(require-package package min-version t)))))

;; 强行提前初始化ELPA。因为默认情况下Emacs在init.el加载完之后才开始初始化ELPA，
;; 而我们把大多数包的初始化函数都放在init.el中，如果不提前初始化ELPA会导致后面的
;; 初始化过程出错（对应的包文件还没有加载进来）。
(package-initialize)
(provide 'init-elpa)
