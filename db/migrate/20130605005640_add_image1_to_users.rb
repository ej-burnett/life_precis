class AddImage1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image1, :binary
  end
end
