class MenuGroup < ActiveRecord::Base
	has_many :menu_containers
	has_many :menu_links, :through => :menu_container
	belongs_to :role
end
