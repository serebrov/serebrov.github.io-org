;;; publish.el --- Export the blog from org to static HTML  -*- lexical-binding: t; -*-

;;; Commentary:

;; Sources are in posts/, shared CSS and JS are in static/, and the site
;; goes to public/.  Build from the shell with `make build', or load this
;; file in Emacs and run M-x blog-publish.
;;
;; Code blocks are colored at build time by htmlize, with the Emacs major
;; mode of each language.  Install htmlize from MELPA before the build.
;;
;; The build does not evaluate code blocks.  For a block with ":exports both",
;; the results that are already in the org file are exported as they are.

;;; Code:

(require 'ox-publish)
(require 'ox-html)
(require 'package)

(unless (require 'htmlize nil t)
  (package-initialize)
  (require 'htmlize))

(defconst blog-root (file-name-directory (or load-file-name buffer-file-name))
  "Directory that contains this file.")

(defun blog-path (name)
  "Return NAME expanded against `blog-root'."
  (expand-file-name name blog-root))

(defconst blog-html-head
  (concat "<link rel=\"stylesheet\" href=\"static/blog.css\">\n"
          "<script defer src=\"static/blog.js\"></script>")
  "The <head> tags that every page shares.")

(defun blog-video-export (path _desc backend _info)
  "Export a video:PATH link as an HTML5 video element when BACKEND is HTML."
  (when (org-export-derived-backend-p backend 'html)
    (format "<video controls preload=\"metadata\" src=\"%s\"></video>" path)))

(org-link-set-parameters "video" :export #'blog-video-export)

(defun blog-lazy-images (output backend _info)
  "Add lazy loading to all images in OUTPUT when BACKEND is HTML."
  (when (org-export-derived-backend-p backend 'html)
    (string-replace "<img " "<img loading=\"lazy\" " output)))

(defun blog-slug (title)
  "Return an HTML id made from TITLE, for example \"code-blocks\"."
  (let ((slug (string-trim (replace-regexp-in-string "[^a-z0-9]+" "-" (downcase title))
                           "-" "-")))
    (if (string-empty-p slug) "section" slug)))

(defun blog-add-heading-ids (_backend)
  "Give each heading without a CUSTOM_ID an id made from its title.
Org makes random ids otherwise, and links to sections break on each
build.  This runs on the export copy of the buffer, not on the file."
  (let ((used (make-hash-table :test #'equal)))
    (org-map-entries
     (lambda ()
       (unless (org-entry-get nil "CUSTOM_ID")
         (let* ((slug (blog-slug (org-link-display-format (org-get-heading t t t t))))
                (count (puthash slug (1+ (gethash slug used 0)) used)))
           (org-entry-put nil "CUSTOM_ID"
                          (if (= count 1) slug (format "%s-%d" slug count)))))))))

(defun blog-projects ()
  "Return the `org-publish-project-alist' for the blog."
  `(("blog-posts"
     :base-directory ,(blog-path "posts")
     :base-extension "org"
     :publishing-directory ,(blog-path "public")
     :publishing-function org-html-publish-to-html
     :auto-sitemap t
     :sitemap-filename "index.org"
     :sitemap-title "Posts"
     :sitemap-sort-files anti-chronologically
     :with-toc t
     :section-numbers nil
     :headline-levels 6
     :html-doctype "html5"
     :html-html5-fancy t
     :html-head-include-default-style nil
     :html-head-include-scripts nil
     :html-head ,blog-html-head
     :html-postamble nil
     :html-validation-link nil)
    ("blog-media"
     :base-directory ,(blog-path "posts")
     :base-extension "png\\|jpe?g\\|gif\\|svg\\|webp\\|mp4\\|webm"
     :publishing-directory ,(blog-path "public")
     :publishing-function org-publish-attachment
     :recursive t)
    ("blog-static"
     :base-directory ,(blog-path "static")
     :base-extension "css\\|js"
     :publishing-directory ,(blog-path "public/static")
     :publishing-function org-publish-attachment)
    ("blog" :components ("blog-posts" "blog-media" "blog-static"))))

(defun blog-publish (&optional force)
  "Publish the blog to public/.  With FORCE, export all files again."
  (interactive "P")
  (let ((org-publish-project-alist (blog-projects))
        (org-publish-timestamp-directory (blog-path ".cache/"))
        (org-html-htmlize-output-type 'css)
        (org-export-use-babel nil)
        (org-export-before-parsing-functions
         (cons #'blog-add-heading-ids org-export-before-parsing-functions))
        (org-export-filter-final-output-functions
         (cons #'blog-lazy-images org-export-filter-final-output-functions))
        (make-backup-files nil))
    (org-publish "blog" force)))

(provide 'publish)
;;; publish.el ends here
