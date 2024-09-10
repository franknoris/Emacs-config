;;; elpaca-use-package-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "elpaca-use-package" "elpaca-use-package.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from elpaca-use-package.el

(defvar elpaca-use-package-mode nil "\
Non-nil if Elpaca-Use-Package mode is enabled.
See the `elpaca-use-package-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `elpaca-use-package-mode'.")

(custom-autoload 'elpaca-use-package-mode "elpaca-use-package" nil)

(autoload 'elpaca-use-package-mode "elpaca-use-package" "\
Minor mode to enable Elpaca support for `use-package'.

This is a minor mode.  If called interactively, toggle the
`Elpaca-Use-Package mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='elpaca-use-package-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "elpaca-use-package" '("elpaca-use-package--" "use-package-"))

;;;***

(provide 'elpaca-use-package-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; elpaca-use-package-autoloads.el ends here
