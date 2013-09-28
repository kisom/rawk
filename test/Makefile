# build and push a site using rawk
# usage: edit SITE and RHOST
# 	- Kyle Isom <coder@kyleisom.net>

# directory containing site source
# ours is named sfnet because it was originally going to be the sourceforge
# page. 
SITE=sfnet

# ensure RHOST has a trailing slash!
#     e.g. foo@spam:baz/
RHOST=brokenlcd.net:sites/rawk-site/

TARGET="$(PWD)/$(SITE)"


### shouldn't need to modify anything below these lines ###

all:	site

site:
	rawk $(TARGET)

install: 
	rsync -auvz -e ssh $(SITE).build/ $(RHOST)

clean:
	rm -rf $(SITE).build

buildclean:
	rm -rf $(SITE).build/*
	find . -iname .\*.\* -exec rm {} \;

deploy: buildclean site install

target-list:
	@echo "valid targets:"
	@echo "	site:  	 build site"
	@echo " install: rsync site to RHOST"
	@echo " clean:   remove \$(SITE).build"
	@echo " buildclean: remove .*.* (i.e. editor swap files) from site/"
	@echo " deploy: buildclean, site, install shortcut"
	@echo " "


.PHONY: all clean site install target-list buildclean deploy

