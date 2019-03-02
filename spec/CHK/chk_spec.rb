# noinspection RubyResolve,RubyResolve
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'CHK'

RSpec.describe Checkout do
  it 'returns -1 for invalid input' do
    checkout = Checkout.new
    expect(checkout.checkout(1)).to eq -1
  end

  it 'string contains non capital chars' do
    checkout = Checkout.new
    expect(checkout.checkout('a')).to eq -1
  end

  it 'string contains non capital chars' do
    checkout = Checkout.new
    expect(checkout.checkout('-')).to eq -1
  end

  it 'returns 50 for item A' do
    checkout = Checkout.new
    expect(checkout.checkout('A')).to eq 50
  end

  it 'returns 115 for itesm ABCD' do
    checkout = Checkout.new
    expect(checkout.checkout('ABCD')).to eq 115
  end
end


# | Item | Price | Special offers |
# +------+-------+----------------+
# | A    | 50    | 3A for 130     |
# | B    | 30    | 2B for 45      |
# | C    | 20    |                |
# | D    | 15    |


