# frozen_string_literal: true

RSpec.describe Drivin do
  it 'has a version number' do
    expect(Drivin::VERSION).to eq('0.1.0')
  end

  it 'has a logger' do
    expect(described_class.logger).to be_a(Logger)
  end

  it 'has a api base url' do
    expect(described_class.base_url).to eq('https://external.driv.in')
  end

  it 'has a configuration' do
    expect(described_class.config).to be_a(Drivin::Configuration)
  end

  it 'has a api_key method' do
    expect(described_class).to respond_to(:api_key)
  end

  it 'has a faraday connection' do
    expect(described_class.connection).to be_a(Faraday::Connection)
  end
end
