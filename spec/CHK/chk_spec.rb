# noinspection RubyResolve,RubyResolve
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'CHK'

RSpec.describe Checkout do
  it 'test_checkout' do
    checkout = Checkout.new
    expect(checkout.checkout(1)).to eq -1
  end
end
