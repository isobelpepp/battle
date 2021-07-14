feature 'Attacking players' do
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Bob attacked Rob'
  end
end
