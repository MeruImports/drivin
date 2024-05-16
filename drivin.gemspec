# frozen_string_literal: true

require_relative "lib/drivin/version"

Gem::Specification.new do |spec|
  spec.name = "driv.in"
  spec.version = Drivin::VERSION
  spec.authors = ["Andrés Arias"]
  spec.email = ["anmac96@hotmail.com"]
  spec.description = "Driv.in ruby library"
  spec.summary = "Driv.in ruby library"
  spec.files = Dir.glob("lib/**/*.rb")
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.7"

  spec.add_dependency "zeitwerk", "~> 2.6"
  spec.add_dependency "faraday", "~> 2.8"

  spec.metadata = {"rubygems_mfa_required" => "true"}
end
