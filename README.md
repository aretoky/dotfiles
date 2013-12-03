# dotfiles

## Install

### rbenv/ruby-build
```
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ruby required libssl-dev libreadline6-dev libncurses5-dev libsqlite3-dev
# nokogiri required libxml2-dev libxslt1-dev
rbenv install 2.0.0-dev
rbenv global  2.0.0-dev
rbenv exec gem install bundler --pre
rbenv rehash
```


