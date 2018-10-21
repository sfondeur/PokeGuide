# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'httparty'

Pokemon.destroy_all
Generation.destroy_all
Game.destroy_all

# the pokemon api's
@pokemon_api = HTTParty.get('https://pokeapi.co/api/v2/pokemon/')
@gen_api = HTTParty.get('https://pokeapi.co/api/v2/generation/')
@game_api = HTTParty.get('https://pokeapi.co/api/v2/version-group/')

# json parsed api's
@json_pokemon = JSON.parse(@pokemon_api.body)
@json_gen = JSON.parse(@gen_api.body)
@json_game = JSON.parse(@game_api.body)

# results part of api
poke_results = @json_pokemon['results']
gen_results = @json_gen['results']
game_results = @json_game['results']


# populate pokemons table for GEN 1 -- (For time reasons, had to split it up by generation)
# (1..151).each do |x|

#     @names = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['name']
#     capitalized_name = @names.capitalize

#     @id = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['id']
#     # @height = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['height']
#     @img_path = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['sprites']['front_default']

#     @gen = HTTParty.get('https://pokeapi.co/api/v2/pokemon-species/' + x.to_s)['generation']['name']
#     capitalized_gen = @gen.capitalize

#     # puts statement for testing
#     # puts "#{@id} -- #{capitalized_name} -- #{@img_path} -- #{capitalized_gen}"

#     Pokemon.create( :name  => capitalized_name,
#                     :pokedex_number => @id,
#                     :image  => @img_path,
#                     :generation_num => capitalized_gen )

#     puts "Created #{capitalized_name}"
# end

# GEN 2
(152..251).each do |x|

    @names = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['name']
    capitalized_name = @names.capitalize

    @id = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['id']
    # @height = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['height']
    @img_path = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['sprites']['front_default']

    @gen = HTTParty.get('https://pokeapi.co/api/v2/pokemon-species/' + x.to_s)['generation']['name']
    capitalized_gen = @gen.capitalize

    # puts statement for testing
    # puts "#{@id} -- #{capitalized_name} -- #{@img_path} -- #{capitalized_gen}"

    Pokemon.create( :name  => capitalized_name,
                    :pokedex_number => @id,
                    :image  => @img_path,
                    :generation_num => capitalized_gen )

    puts "Created #{capitalized_name}"
end