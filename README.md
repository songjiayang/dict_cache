# DictCache

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/dict_cache`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dict_cache'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dict_cache

## Usage

### 1. translate words

``` shell
dict apple

```
![translate_word.png](http://7o512j.com1.z0.glb.clouddn.com/translate_word.png)

### 2. list daily words

``` shell
dict_cache date:2016
dict_cache // today is default
```
![list_words.png](http://7o512j.com1.z0.glb.clouddn.com/daily_words)

### 3. cache clear

`dict_cache clear` to remove all cache files in `~/.dict_cache`


### 4. help

`dict_cache --help/-h` to get helps.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[songjiayang]/dict_cache. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
