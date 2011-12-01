class Country < ActiveRecord::Base
	validates_uniqueness_of :name, {:message => "Country name Already Exist.. :(" }
	validates_presence_of :name
	before_validation :capitalize_name
	
	def capitalize_name
		self.name=self.name.upcase
	end

end
