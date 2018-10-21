# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'httparty'

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


# populate pokemons table
(1..3).each do |x|
    # pokemon = "#{x['name']}".capitalize
    # @names = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['name']
    # @id = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['id']
    # @height = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['height']
    # @img_path = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + x.to_s)['sprites']['front_default']

    @gen = HTTParty.get('https://pokeapi.co/api/v2/pokemon-species/' + x.to_s)['generation']['name']

    # puts statement
    # puts "#{@id} -- #{@names} -- #{@height} -- #{@img_path}"
    puts "#{@gen}"

    # populate_pokemon = Pokemon.create( :name  => @names,
    #                                    :pokedex_number => @id!,
    #                                    :image  => @img_path)
end

# loops through each result hash and returns the capitalized form of each 'name' element and their url to their page
# gen_results.each do |data|
    # pokemon = "#{data['name']}".capitalize
#     # poke_url = "#{data['url']}"
#     puts "#{pokemon}"
# end


# # Populate Generation table with name 
# gen_results.each do |data|
#     gen = "#{data['name']}".capitalize
    
#     create_gen = Generation.create(name: "#{gen}")
#     create_gen.save
#     # puts "Created #{data}"
# end


# if Pokemon.count == 0 
#   NEXT_POKEMON = 1 
# else 
#   NEXT_POKEMON = Pokemon.last.id + 1
# end
# TOTAL_POKEMON = HTTParty.get(@url).parsed_response['count']
    
# @url = "https://pokeapi.co/api/v2/pokemon/"

# (1..100).each do |x| 
#     @names = HTTParty.get(@url + x.to_s).parsed_response['name']
#     @pokedex_num = HTTParty.get(@url + x.to_s).parsed_response['id']
#     @height = HTTParty.get(@url + x.to_s).parsed_response['height']
#     @weight = HTTParty.get(@url + x.to_s).parsed_response['weight']
# end