class AddImage2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image2, :binary
  end
end
