# Compiler
GCC = gcc
CLANG = clang

CFLAGS = -Wall -g3

# Optimization flag
BOFLAGS = -O1
LOFLAGS = -O2
OOFLAGS = -O3
HOFLAGS = -Ofast
KOFLAGS = -march=native -mtune=native -Ofast -funroll-loops -finline-functions -flto -ftree-vectorize

.PHONY: clean 

all: base light opti high kamikaze

base: dotprod.c
	$(GCC) $(CFLAGS) $(BOFLAGS) $< -o $@_gcc
	$(CLANG) $(CFLAGS) $(BOFLAGS) $< -o $@_clang

light: dotprod.c
	$(GCC) $(CFLAGS) $(LOFLAGS) $< -o $@_gcc
	$(CLANG) $(CFLAGS) $(LOFLAGS) $< -o $@_clang

opti: dotprod.c
	$(GCC) $(CFLAGS) $(OOFLAGS) $< -o $@_gcc
	$(CLANG) $(CFLAGS) $(OOFLAGS) $< -o $@_clang

high: dotprod.c
	$(GCC) $(CFLAGS) $(HOFLAGS) $< -o $@_gcc
	$(CLANG) $(CFLAGS) $(HOFLAGS) $< -o $@_clang

kamikaze: dotprod.c
	$(GCC) $(CFLAGS) $(KOFLAGS) $< -o $@_gcc
	$(CLANG) $(CFLAGS) $(KOFLAGS) $< -o $@_clang

clean:
	rm -Rf *~ base* light* opti* high* kamikaze*
