class Item < ActiveRecord::Base
	scope :contains, -> (text) { where("text like ?", "%#{text}%") }
	scope :getParent, -> (id) { where("myId like ?", "#{id}") }
end
