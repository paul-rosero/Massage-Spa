class MassageTherapistsController < ApplicationController

  # GET: /massage_therapists
  get "/massage_therapists" do
    erb :"/massage_therapists/index.html"
  end

  # GET: /massage_therapists/new
  get "/massage_therapists/new" do
    erb :"/massage_therapists/new.html"
  end

  # POST: /massage_therapists
  post "/massage_therapists" do
    redirect "/massage_therapists"
  end

  # GET: /massage_therapists/5
  get "/massage_therapists/:id" do
    erb :"/massage_therapists/show.html"
  end

  # GET: /massage_therapists/5/edit
  get "/massage_therapists/:id/edit" do
    erb :"/massage_therapists/edit.html"
  end

  # PATCH: /massage_therapists/5
  patch "/massage_therapists/:id" do
    redirect "/massage_therapists/:id"
  end

  # DELETE: /massage_therapists/5/delete
  delete "/massage_therapists/:id/delete" do
    redirect "/massage_therapists"
  end
end
