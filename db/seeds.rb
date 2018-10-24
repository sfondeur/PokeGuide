# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'httparty'

# Generation.destroy
# Pokemon.destroy
# Game.destroy

# the pokemon api's
@pokemon_api = HTTParty.get('https://pokeapi.co/api/v2/pokemon/')
@gen_api = HTTParty.get('https://pokeapi.co/api/v2/generation/')
@game_api = HTTParty.get('https://pokeapi.co/api/v2/version-group/')
# for better high res images
@images = HTTParty.get('https://pokeres.bastionbot.org/images/pokemon/') # add pokedex number '125.png'

# json parsed api's
# @json_pokemon = JSON.parse(@pokemon_api.body)
# @json_gen = JSON.parse(@gen_api.body)
# @json_game = JSON.parse(@game_api.body)

# results part of api
# poke_results = @json_pokemon['results']
# gen_results = @json_gen['results']
# game_results = @json_game['results']


# populate pokemons table for GEN 1-5 -- (For time reasons, had to split it up by generation)
# (152..649).each do |x|

#     @names = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['name']
#     capitalized_name = @names.capitalize

#     @id = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['id']
#     @height = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['height']
#     @weight = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['weight']

#     @image_path = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['sprites']['front_default']
#     @shiny_sprite = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['sprites']['front_shiny']
#     # @better_image = HTTParty.get('https://pokeres.bastionbot.org/images/pokemon/' + x)

#     # Checking for Dual typed pokemon
#     @types = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['types']

#     if @types.count == 1
#         @type_one = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['types'][0]['type']['name']
#         capitalized_type_one = @type_one.capitalize
#         @type_two = nil
#         capitalized_type_two = nil
#     else
#         @type_one = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['types'][1]['type']['name']
#         @type_two = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['types'][0]['type']['name']

#         capitalized_type_one = @type_one.capitalize
#         capitalized_type_two = @type_two.capitalize
#     end

#     # Checking for the pokemons Generation
#     @gen = HTTParty.get('https://pokeapi.co/api/v2/pokemon-species/' + x.to_s)['generation']['name']

#     case
#     when @gen == 'generation-i'
#         # puts "Generation 1"
#         gen_num = 1.to_s
#     when @gen == 'generation-ii'
#         # puts "Generation 2"
#         gen_num = 2.to_s
#     when @gen == 'generation-iii'
#         # puts "Generation 3"
#         gen_num = 3.to_s
#     when @gen == 'generation-iv'
#         # puts "Generation 4"
#         gen_num = 4.to_s
#     when @gen == 'generation-v'
#         # puts "Generation 5"
#         gen_num = 5.to_s
#     when @gen == 'generation-vi'
#         # puts "Generation 6"
#         gen_num = 6.to_s
#     when @gen == 'sun-moon'
#         # puts "Generation 7"
#         gen_num = 7.to_s
#     else
#       "Error.."
#     end
#     # puts "#{gen_num}"

#     # for testing
#     puts "#{capitalized_name} has an ID of: #{@id} and was introduced in Generation #{gen_num}"
#     puts "They are around #{@height} inches and #{@weight} pounds on average."
#     puts "And is a #{capitalized_type_one} #{capitalized_type_two} type."
#     puts "Regular Sprite Path: #{@image}"
#     puts "Shiny Sprite path: #{@shiny_sprite}"
#     puts "---"
    

#     create_pokemon = Pokemon.create( :name  => capitalized_name,
#                                      :pokedex_number => @id,
#                                      :image  => @img_path,
#                                      :shiny_sprite => @shiny_sprite,
#                                      :generation_num => gen_num,
#                                      :height => @height,
#                                      :weight => @weight,
#                                      :type_one => capitalized_type_one,
#                                      :type_two => capitalized_type_two )

#     puts "  - There are #{Pokemon.count} pokemon created."
# end

# UPDATE for the missing image path.
(152..649).each do |x|
    @image_path = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['sprites']['front_default']

    pokemon = Pokemon.find(x)
    pokemon.image = @image_path
    pokemon.save

    puts "#{pokemon} has been updated."
end