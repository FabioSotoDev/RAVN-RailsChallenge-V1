json.extract! pokemon, :id, :name, :main_technique, :image, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
