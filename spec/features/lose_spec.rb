# player one you have reached 0 points you lose
feature 'Lose' do
  scenario 'a player has reached 0 HP' do 
    sign_in_and_play
    10.times do
      attack_and_confirm
    end
    click_link 'Attack'
    expect(page).to have_content('Rob loses!!')
  end
end