(require-package 'ycmd)
(require-package 'company)
(require-package 'company-ycmd)

;;下面那句要取消注释
;;(add-hook 'c++-mode-hook 'company-mode)
;;(add-hook 'c++-mode-hook 'ycmd-mode)
;;路径就是你自己的ycmd的路径
;(set-variable 'ycmd-server-command
;	      '("python" "/home/ycmd/ycmd"))
;(set-variable 'ycmd-global-config "/home/.ycm_extra_conf.py")


(set-variable 'ycmd-server-command '("python" "/home/ruby/ycmd/ycmd/"))
;;(set-variable 'ycmd-global-config "/home/ryby/ycmd/cpp/ycm/.ycm_extra_conf.py")
;;(set-variable 'ycmd-global-config "/home/ruby/ycmd/examples/.ycm_extra_conf.py")

(setq company-tooltip-limit 10)
(setq company-idle-delay 0.5)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))
(setq company-require-match nil)

(company-ycmd-setup)
(add-hook 'after-init-hook 'global-company-mode)

(require-package 'flycheck)
(require-package 'flycheck-ycmd)
(flycheck-ycmd-setup)
(add-hook 'after-init-hook #'global-flycheck-mode)  

(provide 'init-ycmd)
