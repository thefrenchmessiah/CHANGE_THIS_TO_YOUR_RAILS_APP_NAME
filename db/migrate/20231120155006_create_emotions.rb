class CreateEmotions < ActiveRecord::Migration[7.1]
  def change
    create_table :emotions do |t|
      t.string :name
      t.text :description
      t.float :rating
      t.boolean :available
      t.references :user, null: false, foreign_key: true
      t.references :universal_emotion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
