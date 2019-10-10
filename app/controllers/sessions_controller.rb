class SessionsController < ApplicationController

  get "/login" do
    if logged_in?

      redirect "/massage_spas/#{@massage_spa.id}"
    else

      erb :"/sessions/login.html"
    end
  end

  post "/login" do
    @massage_spa = MassageSpa.find_by(email: params[:email])
    if @massage_spa && @massage_spa.authenticate(params[:password])
      session[:massage_spa_id] = @massage_spa.id
    
      redirect "/massage_spas/#{@massage_spa.id}}"
    else

      redirect '/login'
    end
  end

  get "/logout" do
    session.clear

    erb :"/sessions/logout.html"
  end  
end





