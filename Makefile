PREFIX="/usr/local"

all:
	install -o root -g bin ./rawk $(PREFIX)/bin/rawk
	mkdir -p $(PREFIX)/share/rawk/
	cp -r ./site $(PREFIX)/share/rawk/
	install -o root -g bin ./README $(PREFIX)/share/rawk
	chmod -R 755 $(PREFIX)/share/rawk/

remove:
	rm -f  $(PREFIX)/bin/rawk
	rm -rf $(PREFIX)/share/rawk

.PHONY: all remove
