class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
	  t.integer :user_id, :null=>false
	  t.integer :item_id, :null=>false
	  t.string :comment, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
