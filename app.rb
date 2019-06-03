require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do

    binding.pry
    @sessions
    erb :index
  end

  # get '/hey' do
  #   @session = session
  # end

end
