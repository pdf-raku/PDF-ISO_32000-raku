# to-json
PDF=../src/PDF32000_2008.pdf
PDF_URL=https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf
# -- Stage I --
$(PDF) :
	wget -O $(PDF) $(PDF_URL)
XML=PDF-ISO_32000.xml

# export paths
ROLE_BASE=ISO_32000
EXPORT_REPO=git@github.com:pdf-raku/PDF-ISO_32000-raku.git
EXPORT_ROOT=../../PDF-ISO_32000-raku
RESOURCE_DIR=$(EXPORT_ROOT)/resources/ISO_32000
MODULE_DIR=lib/$(ROLE_BASE)

## Setup
setup : $(EXPORT_ROOT)

$(EXPORT_ROOT) :
	git clone $(EXPORT_REPO) $(EXPORT_ROOT)

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
	pdf-tag-dump.raku --omit=Span --atts --valid --max-depth=18 $(PDF) > $(XML);

xml-to-json : pdf-to-xml
	raku ../etc/make-json.raku --make --out-dir=$(RESOURCE_DIR) $(XML)

json-to-raku : $(MODULES)

$(MODULES): $(MODULE_DIR)/%.rakumod: $(RESOURCE_DIR)/%.json
	raku ../etc/make-modules.raku --role-name="$(ROLE_BASE)::$(basename $(notdir $@))" $< > $@ 

readme : $(EXPORT_ROOT)/README.md

$(EXPORT_ROOT)/README.md : $(EXPORT_ROOT)/src/README.in $(MODULES)
	(cat $< ; raku -I lib ../etc/make-readme-tables.raku $(MODULES)) > $@

meta6 :$(EXPORT_ROOT)/resources/ISO_32000-index.json $(EXPORT_ROOT)/META6.json

$(EXPORT_ROOT)/resources/ISO_32000-index.json $(EXPORT_ROOT)/META6.json : $(EXPORT_ROOT)/src/META6.in $(MODULES) $(RESOURCES)
	raku -I ../lib ../etc/make-meta6.raku $< $(MODULES) $(RESOURCE_NAMES) > $(EXPORT_ROOT)/META6.json

clean : 
	rm -vf $(EXPORT_ROOT)/META6.json $(EXPORT_ROOT)/README.md $(EXPORT_ROOT)/resources/ISO_32000-index.json $(RESOURCE_DIR)/*.json $(RESOURCE_DIR)/misc/*.json $(MODULE_DIR)/*.rakumod

# Slowest step is generating the XML extract
realclean : clean
	rm -vf $(XML)
	rm -vf $(PDF)
