what is rawk?
=============

rawk is a static site generator written in the bourne shell. it uses posix
compliant syntax to support the maximum number of systems and requires only
a markdown parser and the standard unix tools (grep and sed in particular).

for example, this entire site consists of a tree of markdown files converted
by rawk to static html via a makefile. to see the source this was generated
from, take a look at [the github repo](https://github.com/kisom/rawk/tree/master/page).
this site uses smu (see below) as the markdown processor.

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

actually, an interesting note is that rawk doesn't actually care if you use
markdown or not - as long as whatever you have produces html output suitable
for use as the body of the page. this means you could write all your code in
html (as the body, or modify the header template appropriately) and use
cat as your parser. if you're not using markdown, you should probably change
the extensions in the rawk script.


