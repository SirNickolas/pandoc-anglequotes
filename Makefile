.PHONY: all install install-python uninstall clean

GHC      ?= ghc
GHCFLAGS ?= -O2 -dynamic
STRIP    ?= strip

OBJ  := pandoc-anglequotes
DEST ?= $$HOME/.pandoc/filters

all: $(OBJ)

$(OBJ): $(OBJ).hs
	$(GHC) $(GHCFLAGS) $@
	$(STRIP) $@

install: all
	install -pD $(OBJ) -t $(DESTDIR)$(DEST)

install-python:
	install -pD $(OBJ).py $(DESTDIR)$(DEST)/$(OBJ)

uninstall:
	$(RM) $(DESTDIR)$(DEST)/$(OBJ)

clean:
	$(RM) $(OBJ) *.o *.hi
