# frozen_string_literal: true

RSpec.describe Drivin::Logger do
  let(:dummy) do
    Class.new do
      extend Drivin::Logger
    end
  end

  it 'has a logger' do
    expect(dummy.logger).to be_a(Logger)
  end

  it 'can set a logger' do
    logger = Logger.new($stdout)
    dummy.logger = logger
    expect(dummy.logger).to eq(logger)
  end
end
