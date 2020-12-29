;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(load! "keybindings/+keybindings")
(load! "lang/+config")
(load! "+ui")
(load! "+misc")

;; https://github.com/syl20bnr/spacemacs/issues/2705
;; (setq tramp-mode nil)
(setq tramp-ssh-controlmaster-options
    "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

(setq-default configuration-layer-elpa-archives '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
      ("org-cn"   . "http://elpa.emacs-china.org/org/")
      ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))


;; ss proxy. But it will cause anacond-mode failed.
(setq socks-server '("Default server" "127.0.0.1" 7891 5))
(setq evil-shift-round nil)
(setq byte-compile-warnings '(not obsolete))
(setq warning-minimum-level :error)

;; https://github.com/syl20bnr/spacemacs/issues/8901
(setq-default quelpa-build-tar-executable "/usr/local/bin/gtar")
;; hack for remove purpose mode
;; (setq purpose-mode nil)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
;; (use-package! helm-spotify-plus)

(after! org
  (dolist (face '(org-level-1
                  org-level-2 org-level-3
                  org-level-4 org-level-5
                  org-level-6 org-level-7
                  org-level-8))
    (set-face-attribute face nil :weight 'normal))

  ;; (setq org-superstar-headline-bullets-list '("◉" "○" "◈" "◇" "▣" "□"))
  (setq org-superstar-headline-bullets-list '("☰" "☷" "☯" "☭"))
  ;;(setq org-superstar-headline-bullets-list '("◉" "○" "✸" "✿"))
  ;;(setq org-ellipsis " ▼ ")
)
