require "sinatra"
require "sinatra/base"
require "sinatra/reloader" if development?
require "sinatra/flash"

#class INSERT CLASS NAME < Sinatra::Base
class MakersBNB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  register Sinatra::Flash

  get '/' do
    erb :index
  end 

  get '/sessions/new' do
    erb :login
  end

  post '/sessions' do
    user = nil # User.authenticate(email: params[:email], password: params[:password])
    if user
      session[:user_id] = user.id
      redirect('/listings')      
    else
      flash[:notice] = 'Incorrect email or password'
      redirect('/sessions/new')
    end
  end

  get '/listings' do
    erb :listings
  end

  get '/listings/new' do
    "this is where new listings will be added"
  end

  run! if app_file == $0
end
