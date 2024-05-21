# frozen_string_literal: true

require_relative 'lib/drivin/version'

Gem::Specification.new do |spec|
  spec.name = 'drivin'
  spec.version = Drivin::VERSION
  spec.authors = ['Andrés Arias', 'Alejandro Cen', 'Carlos Gonzalez']
  spec.email = ['anmac96@hotmail.com', 'alex96.cen@gmail.com', 'carlosfelipegg@hotmail.com']
  spec.description = 'Drivin ruby library'
  spec.summary = 'Drivin ruby library'
  spec.files = Dir.glob('lib/**/*.rb')
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7'

  spec.add_dependency 'faraday', '>= 1', '< 2.0'
  spec.add_dependency 'zeitwerk', '>=2.2.2', '< 3.0'

  spec.metadata = { 'rubygems_mfa_required' => 'true' }
end
