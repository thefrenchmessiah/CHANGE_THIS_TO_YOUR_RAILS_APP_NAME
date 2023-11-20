class CreateUniversalEmotions < ActiveRecord::Migration[7.1]
  def change
    create_table :universal_emotions do |t|
      t.string :name

      t.timestamps
    end
  end
end
