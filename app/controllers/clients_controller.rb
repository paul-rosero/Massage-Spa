class ClientsController < ApplicationController

  get "/clients" do
    if logged_in?
      @clients = Client.all

      erb :"/clients/index.html"
    else

      redirect '/'
    end
  end

  get "/clients/new" do
    if logged_in?

      erb :"/clients/new.html"
    else
      
      redirect '/'
    end
  end
  
  post "/clients" do
    if logged_in?
      @client = Client.new(name: params[:name], address: params[:address], medical_history: params[:medical_history], massage_spa_id: current_user.id)
      if @client.save
        flash[:message] = "You have successfully created a new client and saved to the data."
        
        redirect "/clients/#{@client.id}"
      else
        flash[:error] = "Client not created. Every category must be filled in."

        redirect '/clients/new'
      end
    else

      redirect '/'
    end
  end

  get "/clients/:id" do
    if logged_in?
      @client = Client.find_by(id: params[:id])

      erb :"/clients/show.html"
    else

      redirect '/'
    end
  end

  get "/clients/:id/edit" do
    if logged_in?
      @client = Client.find_by(id: params[:id])
      if @client.massage_spa == current_user 
        
        erb :"/clients/edit.html"
      else

        redirect "/massage_spas/#{current_user.id}"
      end
    else 
      redirect '/'
    end
  end
  
  patch "/clients/:id" do
    @client = Client.find_by(id: params[:id])
    if @client.massage_spa == current_user
        @client.update(name: params[:name], address: params[:address], medical_history: params[:medical_history])
        flash[:message] = "You have successfully edited your client."

        redirect "/clients/#{@client.id}"
      else
        
        redirect "/massage_spas/#{@current_user.id}"
    end
  end

  delete "/clients/:id" do
    @client = Client.find_by(id: params[:id])
    if @client.massage_spa == current_user
      @client.destroy
      flash[:message] = "You have successfully deleted your client."

      redirect "/clients"
    else

      redirect "/massage_spas/#{current_user.id}"
    end
  end
end
