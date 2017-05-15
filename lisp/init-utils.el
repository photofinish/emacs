;; after-load
;; 供后续的各初始化函数使用, 把一些相互依赖的feature的按顺序理顺
;; eg: (after-load 'B 'A)
(defmacro after-load (feature &rest body)
  "After FEATURE is loaded, evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,feature
     '(progn ,@body)))


;;格式化整个文件函数
(defun indent-buffer ()
"Indent the whole buffer."
(interactive)
(save-excursion
(indent-region (point-min) (point-max) nil)))
(global-set-key [f7] 'indent-whole)




(provide 'init-utils)
