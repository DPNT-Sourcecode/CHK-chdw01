# noinspection RubyResolve,RubyResolve
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'HLO'

RSpec.describe Hello do
  it 'test_hlo' do
    hello = Hello.new
    expect(hello.hello('world')).to eq 'Hello, World!'
  end
end


