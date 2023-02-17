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

## Run the dev environment
```sh
rails server
```
