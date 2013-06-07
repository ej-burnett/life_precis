class AddColumnToUser < ActiveRecord::Migration
  def change
  	add_attachment :users, :avatar1
  end
end