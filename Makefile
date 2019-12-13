all :
	(cd gen && make all) \
	&& (cd gen/lib && make all)

test : all
	prove -e'perl6 -I .' -v t
