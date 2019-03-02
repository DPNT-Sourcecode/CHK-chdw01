# noinspection RubyResolve,RubyResolve
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'SUM'

RSpec.describe 'SUM' do
  it 'test_sum' do
    expect(Sum.new.sum(1, 2)).to eq 3
  end
end
