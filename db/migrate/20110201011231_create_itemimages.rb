class CreateItemimages < ActiveRecord::Migration
  def self.up
    create_table :itemimages do |t|
	  t.integer :item_id, :null=>false
	  t.string :source, :null=>false
	  t.string :desc
      t.timestamps
    end
  end

  def self.down
    drop_table :itemimages
  end
end
