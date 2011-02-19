class CreateFollowusers < ActiveRecord::Migration
  def self.up
    create_table :followusers do |t|
	  t.integer :user_id, :null=>false
	  t.integer :followed_user_id, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :followusers
  end
end
