class AddImage3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image3, :binary
  end
end
