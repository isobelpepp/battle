require 'game'

describe Game do

  let(:bob) { double :bob }
  let(:rob) { double :rob }

  it 'damages the player' do
    expect(rob).to receive(:receive_damage)
    subject.attack(rob)
  end
  
end