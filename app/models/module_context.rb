class ModuleContext < ActiveRecord::Base
	before_create :capitalize_name
	has_many :menu_links

	def capitalize_name
		self.name= self.name.upcase
	end
end
