class MenuGroup < ActiveRecord::Base
	has_many :menu_group_menu_container
	has_many :menu_containers, :through => :menu_group_menu_container
	belongs_to :role
#	named_scope :active, 
end
