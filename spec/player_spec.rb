require 'player'

describe Player do

  let(:subject) { described_class.new('Bob') }

  it 'returns its name' do
    expect(subject.name).to eq 'Bob'
  end
 
end