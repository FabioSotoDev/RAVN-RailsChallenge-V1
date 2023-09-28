class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :main_technique
      t.string :image
      t.string :countries, array: true, default: []
      t.string :types, array: true, default: []
      t.string :description

      t.timestamps
    end
  end
end
