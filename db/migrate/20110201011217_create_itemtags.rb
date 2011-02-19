class CreateItemtags < ActiveRecord::Migration
  def self.up
    create_table :itemtags do |t|
	  t.integer :item_id, :null=>false
	  t.integer :tag_id, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :itemtags
  end
end
