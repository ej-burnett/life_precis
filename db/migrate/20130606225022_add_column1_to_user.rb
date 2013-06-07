class AddColumn1ToUser < ActiveRecord::Migration
  def change
  	add_attachment :users, :avatar2
  end
end
