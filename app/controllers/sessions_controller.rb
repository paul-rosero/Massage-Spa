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

  get "/signup" do
    if logged_in?
      
      redirect "/massage_spas/new.html"
    else
      erb :"/sessions/new.html"
     
    end
  end

  post "/signup" do
    @massage_spa = MassageSpa.new(name: params[:name], email: params[:email], password: params[:password])
    if @massage_spa.save
      session[:massage_spa_id] = @massage_spa.id

      redirect '/massage_spas/index.html'
    else
       redirect "/signup"
    end
  end

  # GET: /sessions/new
  get "/logout" do
    session.clear
    erb :"/sessions/logout.html"
  end

  

  
end





