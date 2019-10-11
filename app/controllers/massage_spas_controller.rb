class MassageSpasController < ApplicationController

  get "/signup" do
    if logged_in?
      
      redirect "/massage_spas/#{@massage_spa.id}"
    else
      erb :"/sessions/new.html"
     
    end
  end

  post "/signup" do
    @massage_spa = MassageSpa.new(name: params[:name], email: params[:email], password: params[:password])
    if @massage_spa.save
      session[:massage_spa_id] = @massage_spa.id

      redirect "/massage_spas/#{@massage_spa.id}"
    else
       redirect "/signup"
    end
  end

  get "/massage_spas/:id" do
    @massage_spa = MassageSpa.find_by(id: params[:id])
    if @massage_spa == current_user 
      
      erb :"/massage_spas/index.html"
    else

      redirect '/signup'
    end
  end

  get "/massage_spas/:id/edit" do
    @massage_spa = MassageSpa.find_by(id: params[:id])
    if @massage_spa == current_user 

        erb :"/massage_spas/edit.html"
    else

      redirect '/'
    end
  end

  patch "/massage_spas/:id" do
    @massage_spa = MassageSpa.find_by(id: params[:id])
  
    if @massage_spa == current_user
        #binding.pry
      @massage_spa.update(name: params[:name], email: params[:email])

      redirect "/massage_spas/#{@massage_spa.id}"
    else

      redirect "/"
    end
  end

  # DELETE: /massage_spas/5/delete
  #delete "/massage_spas/:id/delete" do
  #  redirect "/massage_spas"
  #end
end
