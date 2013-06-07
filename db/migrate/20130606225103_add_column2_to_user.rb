class AddColumn2ToUser < ActiveRecord::Migration
  def change
  	add_attachment :users, :avatar3
  end
end
