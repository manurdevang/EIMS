class MenuContainer < ActiveRecord::Base
  belongs_to :menu_group
  has_many :menu_links
end
