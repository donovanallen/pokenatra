require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'

get '/pokemon' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/pokemon/new' do
  erb :"pokemons/new"
end

post '/pokemon' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.name}"
end

get '/pokemon/:name' do
  @pokemon = Pokemon.find_by(name: params[:name])
  erb :"pokemons/show"
end
