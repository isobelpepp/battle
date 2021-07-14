require 'game'

describe Game do

  let(:bob) { double :bob }
  let(:rob) { double :rob }
  let(:game) { described_class.new('Bob', 'Rob') }

  describe '#attack' do
    it 'damages the player' do
      expect(rob).to receive(:receive_damage)
      game.attack(rob)
    end
  end
  
  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq 'Bob'
    end
  end
  
  describe '#player_2' do
    it 'returns player 2' do
      expect(game.player_2).to eq 'Rob'
    end
  end

  describe '#switch_turns' do
    it 'starts with player 1s go' do
      expect(game.current_turn).to eq 'Bob'
    end
    it 'switches players after a turn' do
      game.switch_turns
      expect(game.current_turn).to eq 'Rob'
    end   
  end
end