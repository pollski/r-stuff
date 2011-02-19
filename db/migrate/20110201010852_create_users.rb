class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email, :null=>false
	  t.string :first_name, :null=>false
	  t.string :middle_name
	  t.string :last_name, :null=>false
	  t.string :password
	  t.boolean :facebook_check, :null=>false, :default=>false
	  t.boolean :corporate_user, :null=>false, :default=>false
	  t.boolean :public_setting, :null=>false, :default=>false
	  t.string :desc
	  t.timestamp :last_notification_check
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
