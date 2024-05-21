# frozen_string_literal: true

RSpec.describe Drivin::Error do
  let(:response) do
    {
      status: 403,
      headers: {
        'cache-control' => 'no-cache',
        'content-type' => 'application/json; charset=utf-8',
        'date' => 'Tue, 21 May 2024 19:33:18 GMT',
        'server' => 'Apache',
        'status' => '403 Forbidden',
        'vary' => 'Accept-Encoding,Origin',
        'x-content-type-options' => 'nosniff',
        'x-frame-options' => 'SAMEORIGIN',
        'x-request-id' => '0e721e68-403a-433d-a3c0-3f36045777d2',
        'x-xss-protection' => '1; mode=block',
        'transfer-encoding' => 'chunked',
        'connection' => 'keep-alive'
      },
      body: {
        'status' => 'error',
        'response' => {
          'description' => 'Invalid API key'
        }
      },
      request: {
        method: :post,
        url_path: '/api/external/v2/clients',
        params: nil,
        headers: {
          'Content-Type' => 'application/json',
          'X-API-Key' => nil,
          'User-Agent' => 'Faraday v1.10.3'
        },
        body: '{}'
      }
    }
  end
  let(:exception) { Faraday::Error.new(RuntimeError.new, response) }
  let(:error) { described_class.for(exception) }

  it 'is a StandardError' do
    expect(described_class).to be < StandardError
  end

  it 'has a response' do
    expect(error.response).to eq(response)
  end

  it 'has an http code' do
    expect(error.http_code).to eq(403)
  end

  it 'has a message' do
    expect(error.message).to eq('Invalid API key')
  end

  it 'can be raised' do
    expect { raise error }.to raise_error(described_class)
  end
end
