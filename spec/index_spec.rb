require './app'

describe Quiz do
  feature 'test' do
    scenario 'testing' do
      visit '/'
      expect(page).to have_content('Welcome! Please enter your name!')
      fill_in :player_name, with: "Daniel"
    end
  end
end
