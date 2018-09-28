require './app'

describe Quiz do
  feature 'Enter player name' do
    scenario 'Enters player name' do
      sign_in
    end
  end

  feature 'Greets player' do
    scenario 'Hi @name!' do
      sign_in

      expect(page).to have_content 'Welcome, Daniel'
      expect(page).to have_content "Let's play!"
    end
  end
end
