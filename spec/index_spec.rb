require './app'

describe Quiz do
  feature 'Enter player name' do
    scenario 'Enters player name' do
      visit '/'
      expect(page).to have_content('Welcome! Please enter your name!')
      fill_in :player_name, with: "Daniel"
      click_button ('Submit')
    end
  end

  feature 'Greets player' do
    scenario 'Hi @name!' do
      visit '/'
      expect(page).to have_content('Welcome! Please enter your name!')
      fill_in :player_name, with: "Daniel"
      click_button 'Submit'
      visit '/quiz'
      expect(page).to have_content 'Welcome, Daniel'
    end
  end
end
