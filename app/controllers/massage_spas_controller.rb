class MassageSpasController < ApplicationController

  # GET: /massage_spas
  get "/massage_spas" do
    erb :"/massage_spas/index.html"
  end

  # GET: /massage_spas/new
  get "/massage_spas/new" do
    erb :"/massage_spas/new.html"
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
