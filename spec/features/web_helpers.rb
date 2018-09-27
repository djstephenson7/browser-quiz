def sign_in
  visit '/'
  expect(page).to have_content('Welcome! Please enter your name!')
  fill_in :player_name, with: "Daniel"
  click_button ('Submit')
end
