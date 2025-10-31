TMPDIR ?= /tmp
PREFIX := .

OCTAVE_SIF := $(PREFIX)/octave.sif
OCTAVE_DEF := octave.def

.PHONY: all
all: $(OCTAVE_SIF)

$(OCTAVE_SIF): $(OCTAVE_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(OCTAVE_SIF)
