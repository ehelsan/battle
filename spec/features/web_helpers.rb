

def sign_in_and_play
  
  visit '/'
    fill_in :Name_one, with: "Ehelsan"
    fill_in :Name_two, with: "E."
    click_button('Submit')
    

end