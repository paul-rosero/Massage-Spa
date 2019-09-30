class SessionsController < ApplicationController

  # GET: /sessions
  get "/login" do
    erb :"/sessions/login.html"
  end

  get "/signup" do
    if logged_in?
      
      redirect "/massage_spas/new.html"
    else
      erb :"/sessions/new.html"
     
    end
  end

  post "/signup" do
    if params[:name] == "" || params[:email]== "" || params[:password] == ""
     
      redirect '/signup'
    else
      @massage_spa = MassageSpa.create(name: params[:name], email: params[:email], password: params[:password])
      session[:massage_spa_id] = @massage_spa.id

      redirect '/massage_spas/index.html'
    end
    redirect "/login"
  end

  # GET: /sessions/new
  get "/logout" do
    session.clear
    erb :"/sessions/logout.html"
  end

  # POST: /sessions
  post "/login" do
    redirect '/massage_spas/index.html'
  end

  
end





