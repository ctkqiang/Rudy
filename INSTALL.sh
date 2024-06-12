if sudo -n true 2>/dev/null; then
    bundle install && sudo gem install Rudy-0.1.0.gem tty-prompt
else
    bundle install && gem install Rudy-0.1.0.gem tty-prompt
fi
