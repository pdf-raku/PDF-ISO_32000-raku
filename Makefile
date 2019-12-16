all :
	(cd gen && make all)

clean :
	(cd gen && make clean)

test : all
	prove -e'perl6 -I .' -v t
