require_relative '../lib/interface.rb'


describe Interface do
  it 'displays a help menu' do
    expect { Interface.help }.to output("Example: ruby runner.rb --count 15\n").to_stdout

  end

end
