feature 'allows you to view Player 2 hit points' do
  scenario 'display player 2 HP' do
    
    visit '/'
    fill_in :Name_one, with: "Ehelsan"
    fill_in :Name_two, with: "E."
    click_button('Submit')
    expect(page).to have_content "Player One: Ehelsan , Player Two: E. HP: 3"
  end
end