class CreateCatches < ActiveRecord::Migration[6.0]
  def change
    create_table :catches do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :pokemon, null: false, foreign_key: true
      t.string :alias

      t.timestamps
    end
  end
end
