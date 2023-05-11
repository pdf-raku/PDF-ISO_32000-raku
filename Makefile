
BUILDER_REPO=git@github.com:pdf-raku/PDF-ISO_32000-Builder-raku.git
BUILDER_PATH=../PDF-ISO_32000-Builder-raku
CWD=$(shell pwd)

build : setup
	(cd $(BUILDER_PATH) && make EXPORT_ROOT=$(CWD))

$(BUILDER_PATH) :
	git clone $(BUILDER_REPO) $(BUILDER_PATH)

setup : $(BUILDER_PATH)

BASE=PDF-ISO_32000-$(shell raku -I . -M PDF::ISO_32000 -e'say PDF::ISO_32000.^ver.Str')

test : all
	prove -e'raku -I .' -v t

dist: all
	echo $(BASE)
	tar --transform 's,^,$(BASE)/,' --exclude=.\* --exclude=\*\~ --exclude=\*.tar.gz -cvzf $(BASE).tar.gz LICENSE Makefile META6.json README.md Changes etc gen/lib lib/ resources/ src/*.in
