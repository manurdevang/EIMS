class EducationInstitutionGroup < ActiveRecord::Base
	validates :name, :uniqueness => true
	has_many :education_institutions
end
