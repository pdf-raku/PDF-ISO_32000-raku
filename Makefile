all :
	(cd gen/tables && make all) \
	&& (cd gen/lib && make all)

test :
	prove -e'perl6 -I .' -v t
