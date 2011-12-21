# name        varchar(255) 
# priority    int(11)    

class Role < ActiveRecord::Base

	before_save :capitalise_mathod
	has_many :users_roles
	has_many :users, :through => :users_roles
	has_one :menu_group

	named_scope :active, { :conditions => {:status => true } }

	def capitalise_mathod	
		self.name = self.name.capitalize
	end

	def root_path
		return '/'+self.controller+'/'+self.action
	end
end
