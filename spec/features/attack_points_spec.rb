feature 'confirmation of an attack on player 2' do
  scenario 'attack player 2, receive confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ehelsan ATTACKED E. !!!"

  end
end