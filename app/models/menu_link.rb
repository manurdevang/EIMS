class MenuLink < ActiveRecord::Base
	
	before_save :add_path, :capitalise_mathod

	belongs_to :module_context
	has_many :menugroup_menulink
	has_many :menu_groups, :through => :menugroup_menulink

	def capitalise_mathod	
		self.method = self.method.upcase
	end
	
	def add_path
		self.path = self.path.to_s + "_path"
	end	
end
