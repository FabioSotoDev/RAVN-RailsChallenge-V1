class AddDeletedAtToPokemons < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemons, :deleted_at, :datetime
    add_index :pokemons, :deleted_at
  end
end
