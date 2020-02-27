# to-json
PDF=../src/PDF32000_2008.pdf

# -- Stage I -- 
XML=PDF-ISO_32000.xml

ROLE_BASE=ISO_32000
RESOURCE_DIR=../resources/ISO_32000
MODULE_DIR=lib/$(ROLE_BASE)

# -- Stage II --
SOURCES = $(wildcard $(RESOURCE_DIR)/*.json)
RESOURCES = $(SOURCES) $(wildcard $(RESOURCE_DIR)/misc/*.json)
RESOURCE_NAMES = $(subst $(RESOURCE_DIR),ISO_32000,$(RESOURCES))

# -- Stage III --
MODULES = $(subst $(RESOURCE_DIR),$(MODULE_DIR),$(patsubst %.json,%.rakumod,$(SOURCES)))

# recommend doing a 'make clean' after updating PDF-ISO_32000.xml
# this makefile then needs be be run 3x to progressively rebuild targets
all :
	@echo "*** Stage-I: Extracting tagged content from ISO-32000 (PDF Specification) ***"
	@$(MAKE) pdf-to-xml
	@echo "*** Stage-II: Extracting specification tables as JSON resources ***"
	@$(MAKE) xml-to-json
	@echo "*** Stage-III: Converting JSON resources to Raku roles ***"
	@$(MAKE) json-to-raku
	@echo "*** Stage-IV: Publishing (resource index, README.md, META6.json) ****"
	@$(MAKE) meta6 readme

pdf-to-xml : $(XML)

$(XML) : $(PDF)
	USE_PDF_NATIVE=1 pdf-tag-dump.raku --omit=Span --atts --max-depth=18 $(PDF) > $(XML);

xml-to-json : pdf-to-xml
	perl6 ../etc/make-json.raku --make --out-dir=$(RESOURCE_DIR) $(XML)

json-to-raku : $(MODULES)

$(MODULES): $(MODULE_DIR)/%.rakumod: $(RESOURCE_DIR)/%.json
	perl6 ../etc/make-modules.raku --role-name="$(ROLE_BASE)::$(basename $(notdir $@))" $< > $@ 

readme : ../README.md

../README.md : ../src/README.in $(MODULES)
	(cat $< ; perl6 -I lib ../etc/make-readme-tables.raku $(MODULES)) > $@

meta6 :../resources/ISO_32000-index.json ../META6.json

../resources/ISO_32000-index.json ../META6.json : ../src/META6.in $(MODULES) $(RESOURCES)
	perl6 ../etc/make-meta6.raku $< $(MODULES) $(RESOURCE_NAMES) > ../META6.json

clean : 
	rm -vf ../META6.json ../README.md ../resources/ISO_32000-index.json $(RESOURCE_DIR)/*.json $(RESOURCE_DIR)/misc/*.json $(MODULE_DIR)/*.rakumod

# Slowest step is generating the XML extract
sterile : clean
	rm -vf $(XML)
