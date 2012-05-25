MAIN=vimqrc

.PHONY: all clean distclean

all: $(MAIN).pdf

%.pdf: %.tex
	pdftex $<

clean:
	rm -f $(addprefix $(MAIN),.log)

distclean: clean
	rm -f $(addprefix $(MAIN),.pdf)
