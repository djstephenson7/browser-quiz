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
    erb :quiz
  end

  run! if app_file == $0
end
