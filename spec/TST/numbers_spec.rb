# noinspection RubyResolve,RubyResolve
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'TST'

RSpec.describe 'TST' do
  it 'test_one' do
    expect(One.new.apply).to eq 1
  end
end
