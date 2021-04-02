all: build package

build: build27

build25:
	gem i firebase-ruby -Ni ruby/gems/2.5.0
	ls -m ruby/gems/2.5.0/gems

build27:
	gem i firebase-ruby -Ni ruby/gems/2.7.0
	ls -m ruby/gems/2.7.0/gems

package:
	zip -r lambda-layers . -x ".*" -x "*/.*" -x "LICENSE" -x "Makefile" -x "README.md"
	zipinfo -t lambda-layers

clean:
	rm -Rfv "ruby"

cleanall: clean
	rm -fv lambda-layers.zip
