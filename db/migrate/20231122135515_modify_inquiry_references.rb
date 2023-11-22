class ModifyInquiryReferences < ActiveRecord::Migration[7.1]
  def change
    remove_reference :inquiries, :booking, index: true, foreign_key: true
    add_reference :inquiries, :emotion, null: false, index: true, foreign_key: true
  end
end
