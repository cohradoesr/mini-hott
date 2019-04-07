agda := $(wildcard src/*.lagda)
latex := $(subst src,latex,$(subst .lagda,.tex,$(agda)))

all: $(latex)

latex/%.tex : src/%.lagda
	- agda --latex $<

plain/%.agda : src/%.lagda
	- @echo "==================================================================="
	- gsed -n '/\\begin/,/\\end/ {/{code}/!p}' $< > $@
	- @echo "==================================================================="
