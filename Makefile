all :
	(cd gen && make all)

clean :
	(cd gen && make clean)

test : all
	prove -e'raku -I .' -v t
