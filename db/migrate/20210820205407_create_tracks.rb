class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :length, null: false
      t.string :corners, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
