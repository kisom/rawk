# site-tools Makefile to build and push a site built using smu and sw.
# usage: edit SITE and RHOST
# 	- Kyle Isom <coder@kyleisom.net>

# directory containing site source
SITE=sfnet

# ensure RHOST has a trailing slash!
#     e.g. foo@spam:baz/
RHOST=kisom@brokenlcd.net:rawk-site/

TARGET="$(PWD)/$(SITE)"


### shouldn't need to modify anything below these lines ###

all:	site

site:
	rawk $(TARGET)

install: 
	rsync -auvz -e ssh $(SITE).build/ $(RHOST)

clean:
	rm -rf $(SITE).build

target-list:
	@echo "valid targets:"
	@echo "	site:  	 build site and push it "
	@echo " install: rsync site to RHOST"
	@echo " clean:   remove \$(SITE).static"
	@echo " "


.PHONY: all clean site 

