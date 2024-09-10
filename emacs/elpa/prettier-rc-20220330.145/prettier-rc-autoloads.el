;;; prettier-rc-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "prettier-rc" "prettier-rc.el" (0 0 0 0))
;;; Generated autoloads from prettier-rc.el

(autoload 'prettier-rc-mode "prettier-rc" "\
Runs prettier on file save using local rc rules when this mode is turned on.

This is a minor mode.  If called interactively, toggle the
`Prettier-RC mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `prettier-rc-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "prettier-rc" '("prettier-rc"))

;;;***

;;;### (autoloads nil nil ("prettier-rc-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; prettier-rc-autoloads.el ends here
