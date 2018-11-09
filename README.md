# PDF-ISO_32000-p6

This module contains:

- a copy of the PDF-32000 specification (src/PDF32000_2008.pdf)
- XML tables extracted from the above
- generated interface roles for building and validating PDF objects
- scripts and Makefiles for regenerating the XML tables and roles

todo: runtime introspection of resources and generated artifiacts, e.g.:

```
use PDF::ISO_32000;
PDF::ISO_32000.table[28].xhtml;          # ?? access extracted xhtml by table number ??
PDF::ISO_32000.table[28].json;           # ?? access converted json by table number ??
PDF::ISO_32000.table<Catalog>.interface; # ?? access generated role by table name ??
```

## Scripts in this Distribution

#### `pdf-struct-dump.p6 --password=Xxxx --page=i --max-depth=j --search-tag=Ttt --select=k --obj-num=l --gen-num=m --render --atts --debug src/PDF32000_2008.pdf`

Dumps tagged PDF content as XML.

At the moment just does enough to semi-reliabily extract content from the PDF ISO-32000 specification documents. Could evolve into a general purpose tool for mining elements from tagged PDF's. 


