class SessionsController < ApplicationController

  # GET: /sessions
  get "/login" do
    erb :"/sessions/login.html"
  end

  # POST: /sessions
  post "/login" do
    @massage_spa = MassageSpa.find_by(id: params[:id])
    if @massage.authenticate(params[:password])
      session[:massage_spa_id] = @massage_spa.id
    
      redirect "/massage_spas/#{@massage_spa.id}"
    else
      redirect
    end
  end

  get "/logout" do
    session.clear
    erb :"/sessions/logout.html"
  end

  

  
end





