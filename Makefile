agda    := $(wildcard src/*.lagda)
latex   := $(subst src,latex,$(subst .lagda,.tex,$(agda)))
html    := $(subst src,blog/pages,$(subst .lagda,.html,$(agda)))
md      := $(subst src,blog/pages,$(subst .lagda,.md,$(agda)))
rawagda := $(subst src,docs/agda,$(subst .lagda,.agda,$(agda)))
iimages := $(wildcard images/*.ipe)
iimgpng := $(subst images/,docs/assets/ipe-images/,$(subst .ipe,.png,$(iimages)))


all: $(latex) $(md) $(rawagda) $(iimgpng)
	- @rm -rf blog/pages/*.tex
	- mkdir -p blog/pages

latex/%.tex : src/%.lagda
	- agda --latex --allow-unsolved-metas $<

# ------------------------------------------------------------------------------
# ------< The following is related with the website of this library. >----------
# ------------------------------------------------------------------------------

# At the moment, --html is ouput .tex files from lagda (this is a bug I must report)
# when the option is --html-highlight=code
blog/pages/%.tex : src/%.lagda 
	- agda --html --html-dir=blog/pages --html-highlight=code --allow-unsolved-metas $<

blog/pages/%.md : blog/pages/%.tex
	- cp $< $@

docs/agda/%.agda : src/%.lagda
	- @echo "==================================================================="
	- gsed -n '/\\begin/,/\\end/ {/{code}/!p}' $< > $@
	- @echo "==================================================================="

docs/assets/ipe-images/%.png : images/%.ipe
	iperender -png -resolution 400 $< $@

docs-install:
	npm install .
	cd blog && bundle update
	cd blog && npm install .
	@echo " [!] run $ make docs-build

docs-build:
	gulp build
	@echo " [!] run $ make docs-serve"

docs-serve:
	cd docs && gulp default
