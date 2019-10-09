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
      @client = Client.new(params, massage_spa_id: params[current_user.id])
      if @client.save
        
        redirect "/clients/#{@client.id}"
      else
      
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

  # GET: /clients/5/edit
  get "/clients/:id/edit" do
    erb :"/clients/edit.html"
  end

  # PATCH: /clients/5
  patch "/clients/:id" do
    redirect "/clients/:id"
  end

  # DELETE: /clients/5/delete
  delete "/clients/:id/delete" do
    redirect "/clients"
  end
end
