class MenuGroupMenuContainer < ActiveRecord::Base
	belongs_to :menu_group
	belongs_to :menu_container
end
