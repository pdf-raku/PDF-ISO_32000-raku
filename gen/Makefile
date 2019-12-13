# to-json
PDF_SRC=../src/PDF32000_2008.pdf
PDF_DEST=PDF-ISO_32000.xml

# modules
ROLE_BASE=ISO_32000
SRC_DIR=../resources/ISO_32000
DEST_DIR=lib/$(ROLE_BASE)
RESOURCES = $(wildcard $(SRC_DIR)/*.json) $(wildcard $(SRC_DIR)/misc/*.json)
RESOURCE_NAMES = $(subst $(SRC_DIR),ISO_32000,$(RESOURCES))

SOURCES = $(wildcard $(SRC_DIR)/*.json)
MODULES = $(subst $(SRC_DIR),$(DEST_DIR),$(patsubst %.json, %.pm6,$(SOURCES)))

all : to-xml to-json modules readme meta

to-json : to-xml
	perl6 ../etc/tables2json.p6 --make --out-dir=$(SRC_DIR) $(PDF_DEST)

to-xml : $(PDF_DEST)

$(PDF_DEST) : $(PDF_SRC)
	USE_PDF_NATIVE=1 perl6 ../bin/pdf-struct-dump.p6 --atts --max-depth=18 $(PDF_SRC) > $(PDF_DEST);

modules : $(MODULES)

$(MODULES): $(DEST_DIR)/%.pm6: $(SRC_DIR)/%.json
	perl6 ../etc/make-modules.p6 --role-name="$(ROLE_BASE)::$(basename $(notdir $@))" $< > $@ 

meta : ../resources/ISO_32000-index.json ../META6.json

../resources/ISO_32000-index.json ../META6.json : ../src/META6.in modules $(RESOURCES)
	perl6 ../etc/make-meta6.p6 $< $(MODULES) $(RESOURCE_NAMES) > ../META6.json

readme : ../README.md

../README.md : ../src/README.in modules
	(cat $< ; perl6 -I lib ../etc/make-readme-tables.p6 $(MODULES)) > $@

clean : 
	rm -vf $(MODULES)
