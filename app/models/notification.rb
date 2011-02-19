class Notification < ActiveRecord::Base
def users
	return User.find(self.user_id)
end
def tags
	return Tag.find(self.tag_id)
end
end
