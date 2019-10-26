require_relative 'config/environment'
class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    puppy_hash = {name: = params[:name], age: = params[:months_old], breed: = params[:breed]}
    @puppy = Puppy.new(puppy_hash)
    erb :display_puppy
  end
end
