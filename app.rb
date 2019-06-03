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

    binding.pry
    @session[:name] = params[:name]
    

  end

end
