# noinspection RubyResolve,RubyResolve
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'CHK'

RSpec.describe Checkout do
  it 'returns -1 for invalid input' do
    checkout = Checkout.new
    expect(checkout.checkout('')).to eq 0
  end

  it 'string contains non capital chars' do
    checkout = Checkout.new
    expect(checkout.checkout("ABCa")).to eq -1
  end

  it 'string contains non capital chars' do
    checkout = Checkout.new
    expect(checkout.checkout("A-A")).to eq -1
  end

  it 'returns 50 for item A' do
    checkout = Checkout.new
    expect(checkout.checkout('A')).to eq 50
  end

  it 'returns 115 for itesm ABCD' do
    checkout = Checkout.new
    expect(checkout.checkout('ABCD')).to eq 115
  end

  it 'returns 115 for itesm ABCD' do
    checkout = Checkout.new
    expect(checkout.checkout("AAA")).to eq 130
  end
end


INFO  AuditStream : id = CHK_R1_014, req = checkout("AAA"), resp = 150
INFO  AuditStream : id = CHK_R1_015, req = checkout("AAAA"), resp = 200
INFO  AuditStream : id = CHK_R1_016, req = checkout("AAAAA"), resp = 250
INFO  AuditStream : id = CHK_R1_017, req = checkout("AAAAAA"), resp = 300
INFO  AuditStream : id = CHK_R1_018, req = checkout("B"), resp = 30
INFO  AuditStream : id = CHK_R1_019, req = checkout("BB"), resp = 60
INFO  AuditStream : id = CHK_R1_020, req = checkout("BBB"), resp = 90
INFO  AuditStream : id = CHK_R1_021, req = checkout("BBBB"), resp = 120
INFO  AuditStream : id = CHK_R1_022, req = checkout("ABCDABCD"), resp = 230
INFO  AuditStream : id = CHK_R1_023, req = checkout("BABDDCAC"), resp = 230
INFO  AuditStream : id = CHK_R1_024, req = checkout("AAABB"), resp = 210
INFO  AuditStream : id = CHK_R1_001, req = checkout("ABCDCBAABCABBAAA"), resp = 575



# | Item | Price | Special offers |
# +------+-------+----------------+
# | A    | 50    | 3A for 130     |
# | B    | 30    | 2B for 45      |
# | C    | 20    |                |
# | D    | 15    |



