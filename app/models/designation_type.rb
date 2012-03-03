class DesignationType < ActiveRecord::Base
  has_many :designations
  belongs_to :location
end