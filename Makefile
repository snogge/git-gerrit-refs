prefix          ?= /usr/local
exec_prefix     ?= $(prefix)
bindir          ?= $(prefix)/bin
sbindir         ?= $(prefix)/sbin
libexecdir      ?= $(exec_prefix)/libexec
datarootdir     ?= $(prefix)/share
datadir         ?= $(datarootdir)
sysconfdir      ?= $(prefix)/etc
sharedstatedir  ?= $(prefix)/com
localstatedir   ?= $(prefix)/var
includedir      ?= $(prefix)/include
oldincludedir   ?= /usr/include
docdir          ?= $(datarootdir)/doc/git-gerrit-refs
infodir         ?= $(datarootdir)/info
htmldir         ?= $(docdir)
dvidir          ?= $(docdir)
pdfdir          ?= $(docdir)
psdir           ?= $(docdir)
libdir          ?= $(exec_prefix)/lib
lispdir         ?= $(datarootdir)/emacs/site-lisp
localedir       ?= $(datarootdir)/locale
mandir          ?= $(datarootdir)/man
man1dir         ?= $(mandir)/man1

INSTALL ?= install
INSTALL_PROGRAM ?= $(INSTALL)
INSTALL_DATA ?= $(INSTALL) -m 0644

all:

install: installdirs
	$(INSTALL_PROGRAM) git-gerrit-refs $(DESTDIR)$(bindir)
	-$(INSTALL_DATA) doc/git-gerrit-refs.1 $(DESTDIR)$(man1dir)

install-html install-dvi install-pdf install-ps:

uninstall:
	rm -f $(DESTDIR)$(bindir)/git-gerrit-refs $(DESTDIR)$(man1dir)/git-gerrit-refs.1

installdirs:
	$(INSTALL) -d $(DESTDIR)$(bindir) $(DESTDIR)$(man1dir)

# There is nothing to strip
install-strip: install

clean:
distclean:
mostlyclean:
maintainer-clean:

TAGS:
info:
dvi:
html:
pdf:
ps:
dist:
