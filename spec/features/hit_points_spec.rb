feature 'View hit points' do
  scenario 'see player two hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Bob'
    fill_in :player_2_name, with: 'Rob'
    click_button('Submit')
    expect(page).to have_content 'Rob(60 hit points)'
  end
end