
install:
	- bundle install && gem install Rudy-0.1.0.gem tty-prompt 

build:
	- gem build Rudy.gemspec

clean:
	- bundle clean --force

run: 
	- ruby attack.rb