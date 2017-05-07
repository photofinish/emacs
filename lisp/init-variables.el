;; 关闭烦人的出错时的提示声
(setq visible-bell t)
;; 关闭起动时的那个“开机画面”
(setq inhibit-startup-message t)
;; 显示列号
(setq column-number-mode t)
;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用 的提示
(setq frame-title-format "emacs@%b")

;;恢复文件与临时文件
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)
(custom-set-variables
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t)))
   '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))


























(provide 'init-variables)
