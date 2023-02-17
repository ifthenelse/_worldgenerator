# _worldgenerator
An exploration game written in ruby, rails and node. Made to run on a raspberry.

## Installation
User a version bundler to load proper Ruby and Node versions.
Until we will support devcontainers, that's all you need to do to run the project locally.

Suggestion: if you still don't have any tool version manager, you can install [asdf]()

```sh
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

Restart your shell

```sh
asdf install ruby
asdf install nodejs
```

Restart your shell again.
Make sure you're using ruby 3.2.1 and nodejs 18.4.0. Use `ruby -v` and `node -v` to double check.

## Install dependencies

### Gemfile
```sh
gem install -g
```

### NPM packages
```sh
npm install
```

## First setup

```sh
bundle install

rake db:setup
rake db:migrate
```

Then in a rails console:

```sh
# rails c
require 'active_record/fixtures'
ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('test', 'fixtures'), 'zones')
ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('test', 'fixtures'), 'climates')
```

## Run the dev environment
```sh
rails server
```

Then, you could head to the two main urls:
- [List of zones](http://127.0.0.1:3000)
You can click on links to move on the map and see the distribution changes
- [List of climates](http://127.0.0.1:3000/climates) to add more outside the main bounds. If you add a very different one outside bounds, moving on the map will _slowly_ fade the zone tiles from one to the other.