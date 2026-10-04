;;; Directory-local settings for blog posts.
;; M-x yank-media saves pasted images to images/ and inserts a
;; [[file:images/...]] link, so the export copies them with the post.
((org-mode . ((org-yank-image-save-method . "images/"))))
