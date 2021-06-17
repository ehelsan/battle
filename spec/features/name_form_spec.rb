feature 'allows players to fill in their names in a form' do
  scenario 'allows players to submit names' do
    sign_in_and_play
    expect(page).to have_content "Player One: Ehelsan , Player Two: E."
  end
end
