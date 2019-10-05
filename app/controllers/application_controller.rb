require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions_secret, "massagespa"
  end

  get "/" do
    if logged_in?
      redirect "/massage_spas/#{current_user.id}}"
    else
      erb :welcome
    end
  end


  helpers do
    def current_user
      @current_user ||= MassageSpa.find_by(id: session[:massage_spa_id])
    end

    def logged_in?
      !!current_user
    end
  end
end