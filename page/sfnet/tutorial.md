brokenlcd's guide to setting up sites with rawk
===============================================

*this is not the only way to do this, it's just how i do it.*

step 0: pre-requisites
----------------------
1. you need a markdown parser installed. see the readme for the link for smu,
the markdown parser i use.

2. rawk should be installed to your system path. for the sake of this tutorial,
we'll assume that rawk is installed in /usr/local (i.e. the script is at 
/usr/local/bin/rawk). this should be done with the include makefile, which will
copy over site templates.

3. i assume you have a working webserver - i won't cover apache or lighttpd or 
nginx or whatever web server you're using or how to get dns set up.

step 1: preparing the site
--------------------------
1. first you should create a project directory. i name mine with the domain
name, i.e. rawk.brokenlcd.net. for the same of this document, we'll call this
directory $project. now cd $project. 

2. create a directory in $project to contain the site src. we'll call this 
$site. for example, mkdir rawk\_site. you can add a quick $site/index.md to 
test the site: `echo it works > $site/index.md`. 

3. copy over the skeleton files: `cp -r /usr/local/share/rawk/site/* .`
these files should be in $project. in $project/ you should have $site,
Makefile, rawkrc, and templates. in this example, 

step 2: initial configuration
-----------------------------
1. edit the Makefile:

* changing SITE to contain the folder $site. for this site
it would be SITE=rawk\_site.

* change RHOST to point to where you will upload the site to. it will be 
similar to the line in the makefile. *make sure you have a trailing slash!*

    2. edit rawkrc. for now, you just have to edit site\_title and site\_subtitle.

step 3: set up version control
------------------------------
1. this step is quite optional but **strongly** recommended.

2. you should use whatever version control system you are happy with. i like
git, some other good scms are mercurial and fossil.

3. it is strongly recommended that you only track changes to $site. the
makefile will generate $site.build; this should be ignored.

step 4: add content
-------------------
1. all the site content goes in $site

2. all .md files will be converted to .html - index.md -> index.html, 
about.md -> about.html, etc...

3. rawk copies everything over to build directory but doesn't touch anything
but markdown files. this means *anything* in $site will be pushed to your site.

4. when creating links to other pages in your markdown files, be sure to use
page.html instead of page.md.


step 5: build and publish
-------------------------
1. now it's time to use that makefile you edited in step 2.

2. from inside $project (where the makefile should be), issuing `make` or
`make site` should build your site. if you list the directory after the make,
you should see a $site.build directory. this contains a static html version
of $site.

3. `make install` to rsync your site to RHOST.

4. `make clean` to remove the build directory.

step 6: enjoy
-------------
your site should be up and running now. you are free to focus on content and
not on a framework.

if you run across bugs, would like to contribute patches back, or have ideas
for improvement, you can check out the sourcefourge page in the links section
of [where can i get rawk](where.html).

