class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
	  t.integer :user_id, :null=>false
	  t.integer :sender_id, :null=>false
	  t.string :subject
	  t.string :body
	  t.boolean :read
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
