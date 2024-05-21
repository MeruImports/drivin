# drivin
The drivin ruby library provides convenient access to the Driv.in API from applications written in the Ruby language.

## Installation

Add this to your Gemfile and run `bundle install`:

```ruby
gem 'drivin', git: 'git@github.com:MeruImports/drivin.git'
```

### Configuration

Before using the gem, configure it in your application. You can create an initializer to set up the configuration. Provide your api key. Here's an example using the `drivin` gem in a Ruby on Rails application:

1. Create a new initializer file in the `config/initializers` directory of your Rails application. For example, you can create a file named `drivin.rb`.

2. In the initializer file, configure the `drivin` gem as follows:

```ruby
# config/initializers/drivin.rb

Drivin.configure do |config|
  config.api_key = "your_private_key"
  config.logger = YourCustomLogger.new($stdout) # Optional custom logger, or gem take Rails logger or default ruby logger
end
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

| [![Alejandro Cen](https://github.com/alejandrocen.png?size=100)](https://github.com/alejandrocen) | [![Andrés Arias](https://github.com/Arcanm.png?size=100)](https://github.com/Arcanm) | [![Carlos Gonzalez](https://github.com/carlosfelipeg.png?size=100)](https://github.com/carlosfelipeg) |
|:---:|:---:|:---:|
| [**Alejandro Cen**](https://github.com/alejandrocen) <br> *Software Engineer* | [**Andrés Arias**](https://github.com/Arcanm) <br> *Software Engineer* | [**Carlos Gonzalez**](https://github.com/carlosfelipeg) <br> *Software Engineer* |
