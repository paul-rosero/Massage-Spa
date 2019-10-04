class MassageSpasController < ApplicationController

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

  # GET: /massage_spas
  get "/massage_spas" do
    erb :"/massage_spas/index.html"
  end

  # POST: /massage_spas
  post "/massage_spas" do
    redirect "/massage_spas"
  end

  # GET: /massage_spas/5
  get "/massage_spas/:id" do
    erb :"/massage_spas/index.html"
  end

  # GET: /massage_spas/5/edit
  get "/massage_spas/:id/edit" do
    erb :"/massage_spas/edit.html"
  end

  # PATCH: /massage_spas/5
  patch "/massage_spas/:id" do
    redirect "/massage_spas/:id"
  end

  # DELETE: /massage_spas/5/delete
  delete "/massage_spas/:id/delete" do
    redirect "/massage_spas"
  end
end
