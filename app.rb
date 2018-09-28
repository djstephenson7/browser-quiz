require 'sinatra/base'

class Quiz < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/quiz'
  end

  get '/quiz' do
    @name = session[:player_name]
    @questions = [
      'What is the capital of Cambodia?',
      'When did the Vietnam War officially end?',
      'What is the name of the Wonder of the World, located in Mexico?'
    ]
    erb :quiz
  end

  run! if app_file == $0
end
