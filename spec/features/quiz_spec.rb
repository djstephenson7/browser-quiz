require './app'

feature 'Displaying questions' do
  scenario 'The user can see multiple choice questions' do
    visit('/quiz')

    expect(page).to have_content 'What is the capital of Cambodia?'
    expect(page).to have_content 'When did the Vietnam War officially end?'
    expect(page).to have_content 'What is the name of the Wonder of the World, located in Mexico?'
    
  end
end
