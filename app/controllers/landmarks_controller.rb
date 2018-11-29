class LandmarksController < ApplicationController
  # add controller methods

get '/landmarks' do
  erb :'/landmarks/index'
end

get '/landmarks/new' do
  erb :'landmarks/new'
end

get '/landmarks/:id' do
  erb '/landmarks/show'
end

get '/landamrks/:id/edit' do
  erb :"/landmarks/edit"
end

  post '/landmarks' do

    redirect to "/landmarks/#{@landmark.id}"
  end

  patch '/landmarks/:id'
    redirect to "/landmarks/#{@landmark.id}"
end
