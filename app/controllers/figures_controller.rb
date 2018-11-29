class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

   get '/figures/new' do
     erb :'figures/new'
   end

   get '/figures/:id' do
     @figure = Figure.find_by_id(params[:id])
     erb :'figures/show'
   end

   get '/figures/:id/edit' do
     @figure = Figure.find_by_id(params[:id])
     erb :'figures/edit'
   end

   post '/figures' do
     @figure = Figure.create(params[:figure])
     @figure.titles << Title.create(params[:title])
     @figure.landmarks << Landmark.create(params[:landmark])
     @figure.save
     redirect to "/figures/#{@figure.id}"
   end

   patch '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
    @figure.update(params[:figure])
    @figure.titles << Title.create(params[:title])
    @figure.landmarks << Landmark.create(params[:landmark])
    @figure.save
     redirect to "/figures/#{@figure.id}"
   end
end
