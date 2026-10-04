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
  (concat "<link rel=\"stylesheet\" href=\"/static/blog.css\">\n"
          "<script defer src=\"/static/blog.js\"></script>")
  "The <head> tags that every page shares.
The paths are absolute because the site is at the root of its domain
and pages are in more than one directory.")

(defun blog-read-layout (name)
  "Return the HTML of layout/NAME.
The export reads the file for each page, so changes to it show
after the next rebuild without a reload of this file."
  (with-temp-buffer
    (insert-file-contents (blog-path (concat "layout/" name)))
    (buffer-string)))

(defun blog-page-section (file)
  "Return the menu section of the page made from FILE: \"posts\" or \"archive\"."
  (if (or (file-in-directory-p file (blog-path "posts/archive"))
          (string= (file-name-nondirectory file) "archive.org"))
      "archive"
    "posts"))

(defun blog-header (info)
  "Return the site header for the page that INFO describes.
The menu link with the data-section of the page gets aria-current:
\"page\" on the index pages (the link goes to this page), and
\"true\" on posts (the link goes to the section of the post)."
  (let* ((file (plist-get info :input-file))
         (section (format "data-section=\"%s\"" (blog-page-section file)))
         (current (if (file-equal-p (file-name-directory file) blog-root) "page" "true")))
    (string-replace section
                    (format "%s aria-current=\"%s\"" section current)
                    (blog-read-layout "header.html"))))

(defun blog-footer (_info)
  "Return the site footer."
  (blog-read-layout "footer.html"))

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

(defun blog-sitemap-entry (entry _style project)
  "Return the index page line for the post ENTRY of PROJECT.
The index page is at the site root, and the posts are in html/."
  (format "[[file:html/%s][%s]]"
          (file-name-with-extension entry "html")
          (org-publish-find-title entry project)))

(defconst blog-page-options
  `(:base-extension "org"
    :publishing-function org-html-publish-to-html
    :with-toc t
    :section-numbers nil
    :headline-levels 6
    :html-doctype "html5"
    :html-html5-fancy t
    :html-head-include-default-style nil
    :html-head-include-scripts nil
    :html-head ,blog-html-head
    :html-preamble blog-header
    :html-postamble blog-footer
    :html-divs ((preamble "header" "preamble")
                (content "main" "content")
                (postamble "footer" "postamble"))
    :html-validation-link nil)
  "Export options that all pages share.")

(defun blog-projects ()
  "Return the `org-publish-project-alist' for the blog.
Posts and archive posts go to one flat directory, public/html/, so that
the URLs are /html/<file name>.html, the same as on the old Hugo site."
  `(("blog-posts"
     :base-directory ,(blog-path "posts")
     :publishing-directory ,(blog-path "public/html")
     :auto-sitemap t
     :sitemap-filename "../index.org"
     :sitemap-title "Posts"
     :sitemap-sort-files anti-chronologically
     :sitemap-format-entry blog-sitemap-entry
     ,@blog-page-options)
    ("blog-archive"
     :base-directory ,(blog-path "posts/archive")
     :publishing-directory ,(blog-path "public/html")
     :auto-sitemap t
     :sitemap-filename "../../archive.org"
     :sitemap-title "Archive"
     :sitemap-sort-files anti-chronologically
     :sitemap-format-entry blog-sitemap-entry
     ,@blog-page-options)
    ("blog-index"
     :base-directory ,blog-root
     :exclude "."
     :include ("index.org" "archive.org")
     :publishing-directory ,(blog-path "public")
     ,@blog-page-options)
    ("blog-media"
     :base-directory ,(blog-path "posts")
     :base-extension "png\\|jpe?g\\|gif\\|svg\\|webp\\|mp4\\|webm"
     :publishing-directory ,(blog-path "public/html")
     :publishing-function org-publish-attachment
     :recursive t)
    ("blog-files"
     :base-directory ,(blog-path "posts/files")
     :base-extension any
     :publishing-directory ,(blog-path "public/html/files")
     :publishing-function org-publish-attachment
     :recursive t)
    ("blog-static"
     :base-directory ,(blog-path "static")
     :base-extension "css\\|js"
     :publishing-directory ,(blog-path "public/static")
     :publishing-function org-publish-attachment)
    ("blog" :components ("blog-posts" "blog-archive" "blog-index"
                         "blog-media" "blog-files" "blog-static"))))

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
