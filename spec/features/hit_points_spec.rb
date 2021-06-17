feature 'allows you to view Player 2 hit points' do
  scenario 'display player 2 HP' do
    
    sign_in_and_play
    expect(page).to have_content "Player One: Ehelsan , Player Two: E. HP: 3"
  end
end