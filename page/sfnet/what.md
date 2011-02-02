what is rawk?
=============

rawk is a static site generator written in the bourne shell. it uses posix
compliant syntax to support the maximum number of systems and requires only
a markdown parser and the standard unix tools (grep and sed in particular).

rawk should be fed a tree containing markdown files and any other components
to the site. it will copy that tree over to a build directory and convert
all markdown files to full pages to create a site with consistent headers,
footers, and a context menu of sorts.

rawk has been verified on the following systems:
* linux
* openbsd
* os x   

it is important to note that you need a markdown parser. i deliberately
left the selection up to the user. if you need one, i would suggest 
[smu](http://s01.de/~tox/index.cgi/proj_smu) - it is what i use for all my
sites.



