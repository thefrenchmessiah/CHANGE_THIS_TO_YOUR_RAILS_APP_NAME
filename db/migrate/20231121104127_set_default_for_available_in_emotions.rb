class SetDefaultForAvailableInEmotions < ActiveRecord::Migration[7.1]
  def change
    change_column_default :emotions, :available, from: nil, to: true
  end
end
