require 'sinatra/base'

class Quiz < Sinatra::Base
  get '/' do
    erb :index
  end
end
