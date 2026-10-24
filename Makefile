# Build and preview the blog. See README.org.

EMACS ?= emacs
PORT ?= 8008
PUBLISH = $(EMACS) --batch -Q -l publish.el

.PHONY: build rebuild serve clean

build:  ## Export the changed posts to public/
	$(PUBLISH) --eval '(blog-publish)'

rebuild:  ## Export all posts to public/ again
	$(PUBLISH) --eval '(blog-publish t)'

serve: build  ## Build, then serve public/ on http://localhost:$(PORT)
	python3 -m http.server $(PORT) -d public

clean:  ## Remove the build output and the export cache
	rm -rf public .cache index.org archive.org archive.html tags
