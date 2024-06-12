
install:
	- sh INSTALL.sh

build:
	- gem build Rudy.gemspec

clean:
	- bundle clean --force

run: 
	- ruby attack.rb

debug:
	- make clean && make build && sudo gem install Rudy-0.1.0.gem && make run