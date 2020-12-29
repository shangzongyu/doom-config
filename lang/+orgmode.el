;;; lang/+orgmode.el -*- lexical-binding: t; -*-
;; orgmode settings

;; org-mode
(defvar org-agenda-dir ""
  "gtd org files location")

(defvar deft-dir ""
  "deft org files locaiton")

(defvar blog-admin-dir ""
  "blog-admin files location")

;; (if (spacemacs/system-is-mswindows)
;;     (setq
;;      org-agenda-dir "d:/org-notes"
;;      deft-dir "d:/org-notes"
;;      blog-admin-dir "d:/shine")
;;   (setq
;;    org-agenda-dir "~/org-notes"
;;    deft-dir "~/org-notes"
;;    blog-admin-dir "~/shine"))

(setq org-directory "~/OneDrive/PDMS/Notes")

;; define the refile targets
(setq org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir))
(setq org-agenda-file-gtd (expand-file-name "gtd.org" org-agenda-dir))
(setq org-agenda-file-work (expand-file-name "work.org" org-agenda-dir))
(setq org-agenda-file-journal (expand-file-name "journal.org" org-agenda-dir))
(setq org-agenda-file-code-snippet (expand-file-name "snippet.org" org-agenda-dir))
(setq org-default-notes-file (expand-file-name "gtd.org" org-agenda-dir))
(setq org-agenda-file-blogposts (expand-file-name "all-posts.org" org-agenda-dir))
(setq org-agenda-files (list org-agenda-dir))

(setq-default
  org-agenda-dir "~/OneDrive/Documents/Notes/gtd"
  deft-dir "~/OneDrive/Documents/Notes"
  blog-admin-dir "~/Code/blog/blog-hugo"
)

;; C-n for the next org agenda item
;; (define-key org-agenda-mode-map (kbd "C-p") 'org-agenda-previous-item)

(with-eval-after-load 'org-agenda
  ;; 默认显示节假日
  (setq org-agenda-include-diary t)
  )
