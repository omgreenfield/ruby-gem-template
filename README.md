## Setup

- Ensure you have Ruby `>= 2.7.0` 
- Run `bin/setup` to install dependencies
- Modify `config.yml` to specify gem metadata

## Development

- Add code to `lib/`
- Run `bin/console` to load your library in a `pry` session
- Run `rake bump` to bump the version in `config.yml`
- Run `rake specs` to run specs

## Publishing

- Run `rake build` to build the gem
- Run `rake push` or `rake publish` to push to RubyGems
