class MenuGroup < ActiveRecord::Base
	has_many :menugroup_menulink
	has_many :menu_links, :through => :menugroup_menucontainer
	belongs_to :role
end
