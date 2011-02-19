class CreateExtrainfos < ActiveRecord::Migration
  def self.up
    create_table :extrainfos do |t|
		  t.integer :user_id, :null=>false
	  t.string :address_one
	  t.string :address_two
	  t.string :website_link
	  t.string :company_name
      t.timestamps
    end
  end

  def self.down
    drop_table :extrainfos
  end
end
