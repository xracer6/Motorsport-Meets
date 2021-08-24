class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.integer :year, null: false
      t.string :color, null: false
      t.string :drivetrain, null: false
      t.string :description, null: false
      t.references :owner, index: true, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
