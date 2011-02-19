class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
	  t.integer :user_id, :null=>false
	  t.string :title, :null=>false
	  t.string :desc
	  t.string :sale_link
	  t.boolean :for_trade
	  t.boolean :for_sale
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
