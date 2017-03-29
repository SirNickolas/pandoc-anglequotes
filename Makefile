.PHONY: all install uninstall clean

GHC      ?= ghc
GHCFLAGS ?= -O2 -dynamic
STRIP    ?= strip

OBJ  := pandoc-anglequotes
DEST ?= $$HOME/.pandoc/filters

all: $(OBJ)

$(OBJ): %: %.hs
	$(GHC) $(GHCFLAGS) $@
	$(STRIP) $@

install: all
	install -pDt $(DESTDIR)$(DEST) $(OBJ)

uninstall:
	$(RM) $(OBJ:%=$(DESTDIR)$(DEST)/%)

clean:
	$(RM) $(OBJ) *.o *.hi
