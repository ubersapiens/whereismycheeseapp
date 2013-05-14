class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :alias
      t.string :password_digest

      t.timestamps
    end
    add_attachment :users, :avatar
  end

  def self.down
    drop_table :users
    remove_attachment :users, :avatar
  end
end
