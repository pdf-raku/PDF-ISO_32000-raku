# to-json
PDF_SRC=../src/PDF32000_2008.pdf
PDF_XML=PDF-ISO_32000.xml

# todo: this makefile needs be be run 2 - 3 times to fully expand wildcards
ROLE_BASE=ISO_32000
RESOURCE_DIR=../resources/ISO_32000
MODULE_DIR=lib/$(ROLE_BASE)
RESOURCES = $(wildcard $(RESOURCE_DIR)/*.json) $(wildcard $(RESOURCE_DIR)/misc/*.json)
RESOURCE_NAMES = $(subst $(RESOURCE_DIR),ISO_32000,$(RESOURCES))

SOURCES = $(wildcard $(RESOURCE_DIR)/*.json)
MODULES = $(subst $(RESOURCE_DIR),$(MODULE_DIR),$(patsubst %.json,%.pm6,$(SOURCES)))

all : to-xml to-json modules readme meta

to-xml : $(PDF_XML)

$(PDF_XML) : $(PDF_SRC)
	USE_PDF_NATIVE=1 perl6 ../bin/pdf-struct-dump.p6 --atts --max-depth=18 $(PDF_SRC) > $(PDF_XML);

to-json : to-xml
	perl6 ../etc/tables2json.p6 --make --out-dir=$(RESOURCE_DIR) $(PDF_XML)

modules : $(MODULES)

$(MODULES): $(MODULE_DIR)/%.pm6: $(RESOURCE_DIR)/%.json
	perl6 ../etc/make-modules.p6 --role-name="$(ROLE_BASE)::$(basename $(notdir $@))" $< > $@ 

readme : ../README.md

../README.md : ../src/README.in $(MODULES)
	(cat $< ; perl6 -I lib ../etc/make-readme-tables.p6 $(MODULES)) > $@

meta : ../resources/ISO_32000-index.json ../META6.json

../resources/ISO_32000-index.json ../META6.json : ../src/META6.in $(MODULES) $(RESOURCES)
	perl6 ../etc/make-meta6.p6 $< $(MODULES) $(RESOURCE_NAMES) > ../META6.json

clean : 
	rm -vf ../META6.json ../README.md ../resources/ISO_32000-index.json $(RESOURCE_DIR)/*.json $(RESOURCE_DIR)/misc/*.json $(MODULE_DIR)/*.pm6

# Slowest step is generating the XML extract
sterile : clean
	rm -vf $(PDF_XML)
