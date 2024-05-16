# frozen_string_literal: true

RSpec.describe Drivin do
  it 'has a version number' do
    expect(Drivin::VERSION).to eq('0.1.0')
  end

  it 'has a logger' do
    expect(Drivin.logger).to be_a(Logger)
  end

  it 'has a api base url' do
    expect(Drivin.base_url).to eq('https://api.driv.in')
  end

  it 'has a configuration' do
    expect(Drivin.config).to be_a(Drivin::Configuration)
  end

  it 'has a api_key= method' do
    expect(Drivin.respond_to?(:api_key)).to be_truthy
  end
end
