require 'game'

describe Game do

  let(:rob) { double :rob, hit_points: 10 }
  let(:game) { described_class.new('Bob', 'Rob') }
  let(:dead_player) { double :dead_player, hit_points: 0 }
  let(:finished_game) {described_class.new(dead_player, rob)}

  describe '#initialize' do
    it 'puts player 1 and 2 in an array' do
      expect(game.players).to eq ['Bob', 'Rob']
    end
    it 'starts with player 1s go' do
      expect(game.current_turn).to eq 'Bob'
    end
  end

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
    it 'switches players after a turn' do
      game.switch_turns
      expect(game.current_turn).to eq 'Rob'
    end   
  end

  describe '#other_player' do
    it 'returns player other than current player' do
      expect(game.other_player('Bob')).to eq 'Rob'
    end
  end

  describe '#game_over' do
    it 'returns true if players hit points are less than 0' do
      expect(finished_game.game_over?).to eq true
    end
  end

  describe '#loser' do
    it 'returns the loser' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end