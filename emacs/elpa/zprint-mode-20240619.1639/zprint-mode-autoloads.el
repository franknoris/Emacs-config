;;; zprint-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "zprint-mode" "zprint-mode.el" (0 0 0 0))
;;; Generated autoloads from zprint-mode.el

(autoload 'zprint "zprint-mode" "\
Reformat code using zprint.
If region is active, reformat it; otherwise reformat entire buffer.
When called interactively, or with prefix argument IS-INTERACTIVE,
show a buffer if the formatting fails

\(fn &optional IS-INTERACTIVE)" t nil)

(autoload 'zprint-mode "zprint-mode" "\
Minor mode for reformatting Clojure(Script) code using zprint

This is a minor mode.  If called interactively, toggle the
`zprint mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `zprint-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "zprint-mode" '("zprint-mode-dir"))

;;;***

;;;### (autoloads nil nil ("zprint-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; zprint-mode-autoloads.el ends here
