;;; web-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "web-mode" "web-mode.el" (0 0 0 0))
;;; Generated autoloads from web-mode.el

(put 'web-mode-attr-indent-offset 'safe-local-variable #'(lambda (v) (or (integerp v) (booleanp v))))

(put 'web-mode-attr-value-indent-offset 'safe-local-variable #'(lambda (v) (or (integerp v) (booleanp v))))

(put 'web-mode-markup-indent-offset 'safe-local-variable #'integerp)

(put 'web-mode-markup-comment-indent-offset 'safe-local-variable #'integerp)

(put 'web-mode-css-indent-offset 'safe-local-variable #'integerp)

(put 'web-mode-code-indent-offset 'safe-local-variable #'integerp)

(put 'web-mode-sql-indent-offset 'safe-local-variable #'integerp)

(autoload 'web-mode "web-mode" "\
Major mode for editing web templates.

\(fn)" t nil)

(register-definition-prefixes "web-mode" '("web-mode-"))

;;;***

;;;### (autoloads nil nil ("web-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; web-mode-autoloads.el ends here
