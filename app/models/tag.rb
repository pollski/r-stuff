class Tag < ActiveRecord::Base
has_many :followtags
has_many :itemtags
end
