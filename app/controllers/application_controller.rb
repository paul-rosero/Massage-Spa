require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions_secret, "massagespa"
  end

  get "/" do
    erb :welcome
  end


  helpers do
    def current_user
      @current_user ||= MassageSpa.find_by(username: params[:username]) if session[:username]
    end

    def logged_in?
      !!current_user
    end
  end
end