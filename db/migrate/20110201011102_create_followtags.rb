class CreateFollowtags < ActiveRecord::Migration
  def self.up
    create_table :followtags do |t|
	  t.integer :tag_id, :null=>false
	  t.integer :user_id, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :followtags
  end
end
