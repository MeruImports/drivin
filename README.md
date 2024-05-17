# drivin

The Driv.in Ruby library provides convenient access to the Driv.in API from applications written in the Ruby language.

## Installation

Add this to your Gemfile and run `bundle install`:

```ruby
gem 'drivin', git: 'git@github.com/MeruImports/drivin'
```

### Configuration

Before using the gem, configure it in your application. You can create an initializer to set up the configuration. Provide your api key. Here's an example using the `drivin` gem in a Ruby on Rails application:

1. Create a new initializer file in the `config/initializers` directory of your Rails application. For example, you can create a file named `kushki.rb`.

2. In the initializer file, configure the `drivin` gem as follows:

```ruby
# config/initializers/drivin.rb

Drivin.configure do |config|
  config.api_key = "your_private_key"
  config.logger = YourCustoLogger.new($stdout) # Optional custom logger, or gem take Rails logger or default ruby logger
```

Make sure to replace "your_private_key" with your own API key provided by Drivin using this configuration in your application. The key are sensitive value and should be kept secure.

## Development

### Console

To access the development console, run:

```bash
make console
```

### Testing

Execute the gem's tests using Rake:

```bash
make tests
```

### Run linter

Ensure that your code adheres to Ruby's style conventions by utilizing Rubocop. Validate your code with:

```bash
make linter
```


## Authors

- **Alejandro Cen** - *Descripción o Rol* - [GitHub](https://github.com/alejandrocen)
- **Andrés Arias** - *Descripción o Rol* - [GitHub](https://github.com/Arcanm)
- **Carlos Gonzalez** - *Descripción o Rol* - [GitHub](https://github.com/carlosfelipeg)
