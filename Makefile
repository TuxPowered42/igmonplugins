.PHONY:

libexecdir!= if [ `uname` = 'FreeBSD' ]; then echo 'libexec'; else echo 'lib'; fi
targetdir=$(DESTDIR)/$(PREFIX)/$(libexecdir)/nagios/igmonplugins/

all:
	@echo "Dummy build target"

install:
	mkdir -p 	${targetdir}
	install src/*	${targetdir}
