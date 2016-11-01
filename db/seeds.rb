require 'active_record'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'
require_relative '../models/team'
require_relative 'sample_data'

Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer_id: 2)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer_id: 3)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer_id: 1)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer_id: 4)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer_id: 3)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer_id: 2)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer_id: 4)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer_id: 1)

Trainer.destroy_all
Trainer.create(name: "Donovan Yocksea", level: 19, img_url: "#", team_id: 1)
Trainer.create(name: "Joel Refune", level: rand(50), img_url: "", team_id: 2)
Trainer.create(name: "Drew Redhouse", level: rand(50), img_url: "", team_id: 1)
Trainer.create(name: "Amy Stones", level: rand(50), img_url: "", team_id: 2)

Team.destroy_all
Team.create(name: "Team Rocket")
Team.create(name: "Team Milky")
