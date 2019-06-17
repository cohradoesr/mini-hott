agda    := $(wildcard src/*.lagda)
latex   := $(subst src,latex,$(subst .lagda,.tex,$(agda)))
html    := $(subst src,blog,$(subst .lagda,.html,$(agda)))
md      := $(subst src,blog,$(subst .lagda,.md,$(agda)))
rawagda := $(subst src,docs/agda,$(subst .lagda,.agda,$(agda)))
iimages := $(wildcard images/*.ipe)
iimgpng := $(subst images/,docs/assets/ipe-images/,$(subst .ipe,.png,$(iimages)))


all:
	- @echo "We have these options:"
	- @echo "  For latex imports:"
	- @echo "    $$ make latex       (generate agda codes to include in latex, see mini-hott.tex)"
	- @echo "  For the website:"
	- @echo "    $$ make agda        (just agda files in docs/agda)"
	- @echo "    $$ make docs-build  (generate the website for agda files)"
	- @echo "    $$ make statics     (additional files from agda files and images)"
	- @echo "    $$ make docs-serve  (serve on localhost the site)"

agda: $(rawagda)


statics: $(md) $(rawagda) $(iimgpng)
	- @echo "Serve the website: \n\t$$ make docs-serve"

latex:
	- @make mini-hott.tex
	- python3 extractblocks.py

mini-hott.tex: $(latex)
	- @rm -f mini-hott.tex
	- @for filename in latex/*.tex;do\
			echo "\input{\\MiniHoTTPath/$$filename}" >> mini-hott.tex;\
		done

# This is to use in latex documents as a package of definitions.
latex/%.tex : src/%.lagda
	- @agda --latex --without-K --allow-unsolved-metas $<


.PHONY: clean
clean:
	-@rm -rf docs/* blog/_site

# ------------------------------------------------------------------------------
# ------< The following is related with the website of this library. >----------
# ------------------------------------------------------------------------------

# At the moment, --html is ouput .tex files from lagda (this is a bug I must report)
# when the option is --html-highlight=code
blog/%.tex : src/%.lagda
	- @mkdir -p docs/agda
	- @agda --html --html-dir=blog --html-highlight=code --without-K --allow-unsolved-metas $<

blog/%.md : blog/%.tex
	- @cp $< $@

docs/agda/%.agda : src/%.lagda
	- @mkdir -p docs/agda
	- @gsed -n '/\\begin/,/\\end/ {/{code}/!p}' $< > $@

docs/assets/ipe-images/%.png : images/%.ipe
	- @mkdir -p docs/assets/ipe-images
	- iperender -png -resolution 400 $< $@

docs-install:
	@npm install .
	@cd blog && bundle update
	@cd blog && npm install .
	@echo " [!] run $$ make docs-build"

docs-build:
	- jekyll build \
	  --incremental\
	  --source blog\
	  --destination docs\
	  --config blog/_config.yml\
	  --layouts blog/_layouts\
	  --plugins blog/_plugins
	@echo " [!] run $$ make docs-serve"
	- @make statics

docs-serve:
	cd docs && gulp default


blog/_bibliography/reb.bib : blog/_bibliography/library.bib
	- rm -f blog/_bibliography/ref.bib
	- cp blog/_bibliography/library.bib blog/_bibliography/library-temp.bib
	- cd blog && sh _bibliography/fix-references.sh
	- biber \
			--tool \
			--output_align \
			--output_indent=2 \
			--output_fieldcase=lower -w \
			--output-encoding=UTF-8 \
			--input-encoding=UTF-8 \
			--sortupper=true\
			--output-format=bibtex\
			--debug \
			-O=blog/_bibliography/library-temp.bib blog/_bibliography/library-temp.bib
	- mv blog/_bibliography/library-temp.bib blog/_bibliography/ref.bib
	- rm -f blog/_bibliography/library-temp.*
