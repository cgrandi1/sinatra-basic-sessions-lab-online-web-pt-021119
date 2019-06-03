require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do

    # binding.pry

    erb :index
  end

  post '/checkout' do

    @session[name] = params[:name]
    binding.pry
    
  end

end
