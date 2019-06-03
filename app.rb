require_relative 'config/environment'



class App < Sinatra::Base

  get '/' do

    @session = session
    erb :index
  end

  # get '/hey' do
  #   @session = session
  # end

end
