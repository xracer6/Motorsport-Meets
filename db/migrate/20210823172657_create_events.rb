class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :description, null: false
      #t.string :location, null: false
      #t.string :organizer, null: false
      #t.string :attendees
      #t.belongs_to :track, references: :tracks, null: false
      #t.belongs_to :user, references: :users
      t.references :location, index: true, foreign_key: { to_table: :tracks }
      t.references :organizer, index: true, foreign_key: { to_table: :users }
      t.references :attendees, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
