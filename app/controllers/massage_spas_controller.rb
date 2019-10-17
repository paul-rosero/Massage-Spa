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
      flash[:error] = "Signup Failed: #{@massage_spa.errors.full_messages.to_sentence}."
     
       redirect "/signup"
    end
  end

  get "/massage_spas/:id" do
    if logged_in?
      @massage_spa = MassageSpa.find_by(id: params[:id])
      if @massage_spa == current_user 
      
        erb :"/massage_spas/show.html"
      else

        redirect "/massage_spas/#{@current_user.id}"
      end
    else
      redirect '/'
    end
  end

  get "/massage_spas/:id/edit" do
    if logged_in?
      @massage_spa = MassageSpa.find_by(id: params[:id])
      if @massage_spa == current_user 

        erb :"/massage_spas/edit.html"
      else

        redirect "/massage_spas/#{@current_user.id}"
      end
    else
      redirect '/'
  end

  patch "/massage_spas/:id" do
    @massage_spa = MassageSpa.find_by(id: params[:id])
    if @massage_spa == current_user
      @massage_spa.update(name: params[:name], email: params[:email], password: params[:password])
      flash[:message] = "You have successffully edited your information."

      redirect "/massage_spas/#{@massage_spa.id}"
    else
     
      redirect "/massage_spas/#{@current_user.id}"
    end
  end

  # DELETE: /massage_spas/5/delete
  #delete "/massage_spas/:id/delete" do
  #  redirect "/massage_spas"
  #end
end
