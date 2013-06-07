class AddAvatarsToUsers < ActiveRecord::Migration
  def change
  end
  def self.up
    add_attachment :users, :avatar1
  end

  def self.down
    remove_attachment :users, :avatar1
  end
  def has_attached_file

  end
end
