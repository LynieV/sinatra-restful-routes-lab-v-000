class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    Recipe.create(params)
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

end
