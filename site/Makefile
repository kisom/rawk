# build and push a site using rawk
# usage: edit SITE and RHOST
# 	- Kyle Isom <coder@kyleisom.net>

# directory containing site source
SITE=site

# ensure RHOST has a trailing slash!
#     e.g. foo@spam:baz/
RHOST=user@example.net:/var/www/site/htdocs/

TARGET="$(PWD)/$(SITE)"


### shouldn't need to modify anything below these lines ###

all:	site

site:
	rawk $(TARGET)

install: 
	rsync -auvz -e "ssh" $(SITE).build/ $(RHOST)

clean:
	rm -rf $(SITE).build

target-list:
	@echo "valid targets:"
	@echo "	site:  	 build site and push it "
	@echo " install: rsync site to RHOST"
	@echo " clean:   remove \$(SITE).build"
	@echo " "


.PHONY: all clean site 

