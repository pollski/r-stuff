class Item < ActiveRecord::Base
has_many :itemtags
has_many :tags, :through=>:itemtags

has_many :itemimages
has_many :comments

belongs_to :user, :foreign_key=>'user_id'


end
