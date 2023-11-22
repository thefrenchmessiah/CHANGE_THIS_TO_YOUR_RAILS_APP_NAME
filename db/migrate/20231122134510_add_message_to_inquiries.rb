class AddMessageToInquiries < ActiveRecord::Migration[7.1]
  def change
    add_column :inquiries, :message, :text
  end
end
