;;; +misc.el -*- lexical-binding: t; -*

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "TomShine"
      user-mail-address "shangozngyu@gmail.com")

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!

;;load sensitive data
;; or (like spacemacs init.el)put the above variable into it ,then the own value separated from public config
;; .emacs.secrets.el for example:

;; lsp-mode
(after! lsp-mode
  (setq lsp-enable-snippet t
        lsp-idle-delay 0.2)
  (lsp-register-custom-settings
    '(("gopls.completeUnimported" t t)
    ("gopls.staticcheck" t t))))

(after! projectile
  (setq projectile-project-search-path '("~/OneDrive/PDMS/Notes/" "~/workspace/src")))

;; elfeed settings
;; (setq rmh-elfeed-org-files (list "~/Dropbox/org/elfeed.org"))
;; (use-package! elfeed
;;   :config
;;   (when (featurep! :editor evil +everywhere)
;;     (evil-define-key 'normal elfeed-search-mode-map
;;       "u" #'elfeed-update
;;       )))
