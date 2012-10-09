class Employee < ActiveRecord::Base
  belongs_to :personnel
  has_many :employee_experiences
  has_many :education_details
  has_many :employee_family_details
  has_many :employee_bank_details
end
