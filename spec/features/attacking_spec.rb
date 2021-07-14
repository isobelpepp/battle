feature 'Attacking players' do
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Bob attacked Rob'
  end
  scenario 'Attack and player 2 points reduce' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Rob: 50HP'
  end
  scenario 'Switching turns attacking' do
    sign_in_and_play
    click_link('Attack')
    click_link('OK')
    click_link('Attack')
    expect(page).to have_content 'Rob attacked Bob'
  end
  scenario 'Shows player 1 points reduction' do
    sign_in_and_play
    click_link('Attack')
    click_link('OK')
    click_link('Attack')
    expect(page).to have_content 'Bob: 50HP'
  end
end
