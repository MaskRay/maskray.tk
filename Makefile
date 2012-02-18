.PHONY: all upload clean

all: hakyll
	./hakyll build

hakyll: hakyll.hs
	ghc --make $^

upload: all
	rsync -a --delete _site/ maskray@maskray.tk:/var/www/maskray/

clean: hakyll
	./hakyll clean
