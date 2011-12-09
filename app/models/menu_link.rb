class MenuLink < ActiveRecord::Base
	
	before_save :upcase_mathod, :capitalize_name
  before_create :add_path

	belongs_to :module_context
	has_many :menugroup_menulink
	has_many :menu_groups, :through => :menugroup_menulink

	def upcase_mathod	
		self.method = self.method.upcase
  end

  def capitalize_name 
    self.name = self.name.capitalize
  end 
	
	def add_path
		self.path = self.path.to_s + "_path"
	end	
end
