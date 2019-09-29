class SessionsController < ApplicationController

  # GET: /sessions
  get "/login" do
    erb :"/sessions/login.html"
  end

  get "/signup" do
    erb :"/sessions/new.html"
  end

  # GET: /sessions/new
  get "/logout" do
    session.clear
    erb :"/sessions/logout.html"
  end

  # POST: /sessions
  post "/sessions" do
    redirect "/sessions"
  end

  
end





