class CreateUserimages < ActiveRecord::Migration
  def self.up
    create_table :userimages do |t|
	  t.integer :user_id, :null=>false
	  t.string :source, :null=>false
	  t.string :desc
      t.timestamps
    end
  end

  def self.down
    drop_table :userimages
  end
end
