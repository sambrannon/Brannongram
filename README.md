# README

Brannongram is an Instagram-like application made to help me learn Rails.
It's made by following [these guides](https://www.devwalks.com/lets-build-instagram-in-rails-part-1/).

## Installation

The installation instructions are super verbose in hopes that I'll remember it better if I write it all down. It's all based on using [rbenv](https://github.com/rbenv/rbenv) to manage Ruby versions.

1. Install rbenv (if not already)

  ```
  $ brew install rbenv
  $ rbenv global 2.2.0
  ```

  Also be sure to add `eval "$(rbenv init -)"` to your `~/.zshrc` file so rbenv can be used on new sessions.
2. Install rails

  ```
  gem install rails
  ```

3. Install gems

  ```
  $ cd /path/to/Brannongram
  $ bundle install
  ```

4. Make sure ImageMagick is installed

  ```
  $ brew install ImageMagick
  ```

5. Start things up

  ```
  $ rails s
  ```
