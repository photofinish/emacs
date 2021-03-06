(require-package 'web-mode)
(define-derived-mode react-mode web-mode "React-IDE" "Major mode for eding jsx code.")
(add-hook 'react-mode-hook 'ycmd-mode)
(add-hook 'react-mode-hook'(lambda()
			     (web-mode-set-content-type "jsx")
			     (message "set web-mode-content-type %s" web-mode-content-type)))

(add-to-list 'ycmd-file-type-map '(react-mode . ("javascript")))

(add-to-list 'auto-mode-alist '("\\.js\\'" . react-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . react-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . react-mode))

(provide 'init-react)
