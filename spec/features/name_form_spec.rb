feature 'allows players to fill in their names in a form' do
  scenario 'allows players to submit names' do
    visit '/'
    fill_in :Name_one, with: "Ehelsan"
    fill_in :Name_two, with: "E."
    click_button('Submit')
    expect(page).to have_content "Player One: Ehelsan , Player Two: E."
  end
end
