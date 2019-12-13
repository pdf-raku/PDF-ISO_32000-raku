all :
	(cd gen && make all)

test : all
	prove -e'perl6 -I .' -v t
