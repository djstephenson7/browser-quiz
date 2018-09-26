require './app'

describe Quiz do
  feature 'test' do
    scenario 'testing' do
      visit '/'
      expect(page).to have_content('Testing infrastructure working!')
    end
  end
end
