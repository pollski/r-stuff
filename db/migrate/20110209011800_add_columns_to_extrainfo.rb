class AddColumnsToExtrainfo < ActiveRecord::Migration
  def self.up
  add_column :extrainfos, :state, :string
  add_column :extrainfos, :city, :string
  end

  def self.down
  remove_column :extrainfos, :state
  remove_column :extrainfos, :city
  end
end
