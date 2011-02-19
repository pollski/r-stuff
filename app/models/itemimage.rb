class Itemimage < ActiveRecord::Base
belongs_to :item, :foreign_key=>'item_id'
end
