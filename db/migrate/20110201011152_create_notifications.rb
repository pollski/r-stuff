class CreateNotifications < ActiveRecord::Migration
  def self.up
    create_table :notifications do |t|
	  t.integer :tag_id
	  t.integer :user_id
	  t.string :trackback_url
	  t.string :action
      t.timestamps
    end
  end

  def self.down
    drop_table :notifications
  end
end
