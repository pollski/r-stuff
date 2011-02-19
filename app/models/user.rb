class User < ActiveRecord::Base
has_many :followtags
has_many :tags, :through=>:followtags

has_many :followusers
has_many :items
has_many :messages
has_one :extrainfo
has_many :userimages

end
