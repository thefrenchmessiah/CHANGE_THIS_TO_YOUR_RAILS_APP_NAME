class CreateRatings < ActiveRecord::Migration[7.1]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.text :comment
      t.references :emotion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
