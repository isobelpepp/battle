feature 'Switch turns' do
  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content("Bob's turn")
  end

  scenario 'after player 1 has attacked' do
    sign_in_and_play
    click_link('Attack')
    click_link('OK')
    expect(page).not_to have_content("Bob's turn")
    expect(page).to have_content("Rob's turn")
  end
end