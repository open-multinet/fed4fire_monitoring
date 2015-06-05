###########################################################
# Makefile for compiling the Federation AM API asciidoc   #
###########################################################

# Required software:
#   - asciidoc          (sudo apt-get install asciidoc)
#   - source-highlight  (sudo apt-get install source-highlight)
#   - compact theme for asciidoc. To install
#       - wget http://powerman.name/download/asciidoc/compact-1.3.zip && asciidoc --theme install compact-1.3.zip
#       - or for older asciidoc versions: copy the compact.css inside that zip to /etc/asciidoc/stylesheets/compact.css


HTML = rspec-oml-monitoring.html

all: $(HTML)

clean:
	rm -f $(HTML)

#dependencies (includes) for rspec-oml-monitoring.adoc
rspec-oml-monitoring.html: rspec-oml-monitoring.adoc

%.html: %.adoc
	asciidoc -a theme=compact -a data-uri -a icons -a toc2 -a toclevels=3 $(<F)

.PHONY: all clean

