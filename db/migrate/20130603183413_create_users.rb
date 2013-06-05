class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :born
      t.string :live_now
      t.text :live_past
      t.text :school
      t.text :career
      t.text :hobbies
      t.text :misc
      t.string :email_address
      t.string :password

      t.timestamps
    end
  end
end
