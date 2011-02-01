PREFIX="/usr/local"

all:
	install -o root -g bin ./rawk $(PREFIX)/bin/rawk
	mkdir -p $(PREFIX)/share/rawk/
	cp -r ./site $(PREFIX)/share/rawk/
	install -o root -g bin ./README $(PREFIX)/share/rawk
	find $(PREFIX)/share/rawk/ -type f -exec chmod 644 '{}' \;
	find $(PREFIX)/share/rawk/ -type d -exec chmod 755 '{}' \;

remove:
	rm -f  $(PREFIX)/bin/rawk
	rm -rf $(PREFIX)/share/rawk

.PHONY: all remove
