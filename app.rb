require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/trainer'
require_relative 'models/team'

get '/' do
  erb :"main/index"
end

#POKEMON#
get '/pokemon' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/pokemon/new' do
  erb :"pokemons/new"
end

post '/pokemon' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/edit"
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect '/pokemon'
end
# TRAINERS #
get '/trainers' do
  @trainers = Trainer.all
  erb :"trainers/index"
end

get '/trainers/new' do
  erb :"trainers/new"
end

post '/trainers' do
  @trainer = Trainer.create(params[:trainer])
  redirect "/trainers/#{@trainer.id}"
end

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/show"
end

get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/edit"
end

put '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.update(params[:trainer])
  redirect "/trainers/#{@trainer.id}"
end

delete '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.destroy
  redirect '/trainers'
end

#TEAMS#
get '/teams' do
  @teams = Team.all
  erb :"teams/index"
end

get '/teams/:id' do
  @team = Team.find(params[:id])
  erb :"teams/show"
end
