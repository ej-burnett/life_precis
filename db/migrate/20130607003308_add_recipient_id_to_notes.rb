class AddRecipientIdToNotes < ActiveRecord::Migration
  def change
  	add_column :notes, :recipient_user_id, :integer
  end
end
