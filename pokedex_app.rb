require 'json'
require 'net/http'

class PokedexApp < Sinatra::Application
  enable :sessions

  get '/' do
    display_page :index, {pokemon: call_api}
  end

  def display_page(location, locals = {})
    options = {
      layout_options: { views: './views/layouts' }, # Special options only used for rendering the layout
      layout: locals.fetch(:layout) { :default }, # Whether to use a layout (true or false)
      locals: locals # List of locals passed to the document
    }

    haml location.to_sym, options # Rendering method (template name)
  end

  def display_partial(location, locals = {})
    haml location.to_sym, layout: false, locals: locals # Rendering method (template name)
  end

  def call_api()
    uri = URI.parse(URI.encode("https://pokeapi.co/api/v2/pokemon/#{rand(1..898)}/"))
    api_response = Net::HTTP.get(uri)
    data = JSON.parse(api_response)
    ability = []
    data["abilities"].each {|el| ability << el["ability"]["name"] }
    
    pokemon = []
    pokemon << data["forms"][0]["name"]
    pokemon << "https://img.pokemondb.net/artwork/large/#{data["forms"][0]["name"]}.jpg"
    pokemon << data["height"]
    pokemon << data["weight"]
    pokemon << ability
    
    pokemon
    # pokemon = {
    #   name: data["forms"][0]["name"],
    #   image: "https://img.pokemondb.net/artwork/large/#{data["forms"][0]["name"]}.jpg",
    #   height: data["height"],
    #   weight: data["weight"], 
    #   abilities: ability
    # }
  end
end
