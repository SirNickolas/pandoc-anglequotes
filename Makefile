.PHONY: all clean

GHC      ?= ghc
GHCFLAGS ?= -O2 -dynamic
STRIP    ?= strip

OBJ := pandoc-anglequotes

all: $(OBJ)

$(OBJ): %: %.hs
	$(GHC) $(GHCFLAGS) $@
	$(STRIP) $@

clean:
	$(RM) $(OBJ) *.o *.hi
