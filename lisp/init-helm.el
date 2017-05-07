(require-package 'helm)
(require 'helm-config)
(setq helm-buffers-fuzzy-matching t
            helm-recentf-fuzzy-match    t)

(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files) 

;(define-key helm-map (kbd "") 'helm-execute-persistent-action)
;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
;(define-key helm-map (kbd "C-z") 'helm-select-action)

(helm-mode 1)

(provide 'init-helm)


