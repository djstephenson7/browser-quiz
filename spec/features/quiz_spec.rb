require './lib/questions'

describe Questions do
  describe '.all' do
    it 'returns all questions' do
      questions = Questions.all

      expect(questions).to include('What is the capital of Cambodia?')
      expect(questions).to include('When did the Vietnam War officially end?')
      expect(questions).to include('What is the name of the Wonder of the World, located in Mexico?')
    end
  end
end
