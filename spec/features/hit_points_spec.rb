feature 'View hit points' do
  scenario 'see player two hit points' do
    sign_in_and_play
    expect(page).to have_content 'Rob: 60HP'
  end
end