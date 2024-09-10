;;; corfu-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "corfu" "corfu.el" (0 0 0 0))
;;; Generated autoloads from corfu.el

(autoload 'corfu-mode "corfu" "\
COmpletion in Region FUnction.

This is a minor mode.  If called interactively, toggle the `Corfu
mode' mode.  If the prefix argument is positive, enable the mode,
and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `corfu-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(put 'global-corfu-mode 'globalized-minor-mode t)

(defvar global-corfu-mode nil "\
Non-nil if Global Corfu mode is enabled.
See the `global-corfu-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-corfu-mode'.")

(custom-autoload 'global-corfu-mode "corfu" nil)

(autoload 'global-corfu-mode "corfu" "\
Toggle Corfu mode in all buffers.
With prefix ARG, enable Global Corfu mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Corfu mode is enabled in all buffers where `corfu--on' would do it.

See `corfu-mode' for more information on Corfu mode.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "corfu" '("corfu-" "global-corfu-m"))

;;;***

;;;### (autoloads nil "corfu-echo" "corfu-echo.el" (0 0 0 0))
;;; Generated autoloads from corfu-echo.el

(defvar corfu-echo-mode nil "\
Non-nil if Corfu-Echo mode is enabled.
See the `corfu-echo-mode' command
for a description of this minor mode.")

(custom-autoload 'corfu-echo-mode "corfu-echo" nil)

(autoload 'corfu-echo-mode "corfu-echo" "\
Show candidate documentation in echo area.

This is a minor mode.  If called interactively, toggle the
`Corfu-Echo mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='corfu-echo-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "corfu-echo" '("corfu-echo-"))

;;;***

;;;### (autoloads nil "corfu-history" "corfu-history.el" (0 0 0 0))
;;; Generated autoloads from corfu-history.el

(defvar corfu-history-mode nil "\
Non-nil if Corfu-History mode is enabled.
See the `corfu-history-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `corfu-history-mode'.")

(custom-autoload 'corfu-history-mode "corfu-history" nil)

(autoload 'corfu-history-mode "corfu-history" "\
Update Corfu history and sort completions by history.

This is a minor mode.  If called interactively, toggle the
`Corfu-History mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='corfu-history-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "corfu-history" '("corfu-history"))

;;;***

;;;### (autoloads nil "corfu-indexed" "corfu-indexed.el" (0 0 0 0))
;;; Generated autoloads from corfu-indexed.el

(defvar corfu-indexed-mode nil "\
Non-nil if Corfu-Indexed mode is enabled.
See the `corfu-indexed-mode' command
for a description of this minor mode.")

(custom-autoload 'corfu-indexed-mode "corfu-indexed" nil)

(autoload 'corfu-indexed-mode "corfu-indexed" "\
Prefix candidates with indices.

This is a minor mode.  If called interactively, toggle the
`Corfu-Indexed mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='corfu-indexed-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "corfu-indexed" '("corfu-indexed-"))

;;;***

;;;### (autoloads nil "corfu-info" "corfu-info.el" (0 0 0 0))
;;; Generated autoloads from corfu-info.el

(autoload 'corfu-info-documentation "corfu-info" "\
Show documentation of current candidate.
If called with a prefix ARG, the buffer is persistent.

\(fn &optional ARG)" t nil)

(autoload 'corfu-info-location "corfu-info" "\
Show location of current candidate.
If called with a prefix ARG, the buffer is persistent.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "corfu-info" '("corfu-info--"))

;;;***

;;;### (autoloads nil "corfu-popupinfo" "corfu-popupinfo.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from corfu-popupinfo.el

(defvar corfu-popupinfo-mode nil "\
Non-nil if Corfu-Popupinfo mode is enabled.
See the `corfu-popupinfo-mode' command
for a description of this minor mode.")

(custom-autoload 'corfu-popupinfo-mode "corfu-popupinfo" nil)

(autoload 'corfu-popupinfo-mode "corfu-popupinfo" "\
Corfu info popup minor mode.

This is a minor mode.  If called interactively, toggle the
`Corfu-Popupinfo mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='corfu-popupinfo-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "corfu-popupinfo" '("corfu-popupinfo-"))

;;;***

;;;### (autoloads nil "corfu-quick" "corfu-quick.el" (0 0 0 0))
;;; Generated autoloads from corfu-quick.el

(autoload 'corfu-quick-jump "corfu-quick" "\
Jump to candidate using quick keys." t nil)

(autoload 'corfu-quick-insert "corfu-quick" "\
Insert candidate using quick keys." t nil)

(autoload 'corfu-quick-complete "corfu-quick" "\
Complete candidate using quick keys." t nil)

(register-definition-prefixes "corfu-quick" '("corfu-quick"))

;;;***

;;;### (autoloads nil nil ("corfu-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; corfu-autoloads.el ends here
