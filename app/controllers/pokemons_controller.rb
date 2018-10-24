class PokemonsController < ApplicationController
  def index
    # load up all of the pokemon and make instance variables for all the stuff i need to access on the html
    # @pokemons = Pokemon.limit(151)

    @random_pokemon = Pokemon.find(rand(1..712))
  end

  def show
    @show_pokemon = Pokemon.find(params[:id])
    @type_1 = @show_pokemon.type_one
    @type_2 = @show_pokemon.type_two
    
    case 
    when @type_1 == 'Fire'
      @type_colour_class_1 = "fire"
    when @type_1 == 'Water'
      @type_colour_class_1 = "water"
    when @type_1 == 'Ice'
      @type_colour_class_1 = "ice"
    when @type_1 == 'Grass'
      @type_colour_class_1 = "grass"
    when @type_1 == 'Ghost'
      @type_colour_class_1 = "ghost"
    when @type_1 == 'Dragon'
      @type_colour_class_1 = "dragon"
    when @type_1 == 'Fighting'
      @type_colour_class_1 = "fighting"
    when @type_1 == 'Poison'
      @type_colour_class_1 = "poison"
    when @type_1 == 'Steel'
      @type_colour_class_1 = "steel"
    when @type_1 == 'Dark'
      @type_colour_class_1 = "dark"
    when @type_1 == 'Flying'
      @type_colour_class_1 = "flying"
    when @type_1 == 'Electric'
      @type_colour_class_1 = "electric"
    when @type_1 == 'Ground'
      @type_colour_class_1 = "ground"
    when @type_1 == 'Rock'
      @type_colour_class_1 = "rock"
    when @type_1 == 'Bug'
      @type_colour_class_1 = "bug"
    when @type_1 == 'Normal'
      @type_colour_class_1 = "normal"
    when @type_1 == 'Psychic'
      @type_colour_class_1 = "psychic"
    when @type_1 == 'Fairy'
      @type_colour_class_1 = 'fairy'
    end

    case 
    when @type_2 == 'Fire'
      @type_colour_class_2 = "fire"
    when @type_2 == 'Water'
      @type_colour_class_2 = "water"
    when @type_2 == 'Ice'
      @type_colour_class_2 = "ice"
    when @type_2 == 'Grass'
      @type_colour_class_2 = "grass"
    when @type_2 == 'Ghost'
      @type_colour_class_2 = "ghost"
    when @type_2 == 'Dragon'
      @type_colour_class_2 = "dragon"
    when @type_2 == 'Fighting'
      @type_colour_class_2 = "fighting"
    when @type_2 == 'Poison'
      @type_colour_class_2 = "poison"
    when @type_2 == 'Steel'
      @type_colour_class_2 = "steel"
    when @type_2 == 'Dark'
      @type_colour_class_2 = "dark"
    when @type_2 == 'Flying'
      @type_colour_class_2 = "flying"
    when @type_2 == 'Electric'
      @type_colour_class_2 = "electric"
    when @type_2 == 'Ground'
      @type_colour_class_2 = "ground"
    when @type_2 == 'Rock'
      @type_colour_class_2 = "rock"
    when @type_2 == 'Bug'
      @type_colour_class_2 = "bug"
    when @type_2 == 'Normal'
      @type_colour_class_2 = "normal"
    when @type_2 == 'Psychic'
      @type_colour_class_2 = "psychic"
    when @type_2 == 'Fairy'
      @type_colour_class_2 = 'fairy'
    end

    # set up the image string for the high res images.
    high_res_image_url = "https://pokeres.bastionbot.org/images/pokemon/"
    second_url = @show_pokemon.id
    third_url = ".png"
    @full_url = high_res_image_url + second_url.to_s + third_url


  end
end
