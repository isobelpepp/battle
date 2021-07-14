require 'player'

describe Player do

  let(:bob) { Player.new('Bob') }
  let(:rob) { Player.new('Rob') }

  describe '#initialize' do
    it 'returns its name' do
      expect(bob.name).to eq 'Bob'
    end
    it 'returns hit points' do
      expect(bob.hit_points).to eq Player::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduced player hit points' do
      rob.receive_damage
      expect(rob.hit_points).to eq(Player::DEFAULT_HP - 10)
    end
  end
end