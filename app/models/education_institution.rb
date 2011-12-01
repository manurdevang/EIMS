class EducationInstitution < ActiveRecord::Base
		validates :name, :uniqueness => true
		belongs_to :education_institution_group
end
