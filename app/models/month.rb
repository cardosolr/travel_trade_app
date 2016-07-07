class Month < ActiveRecord::Base
	belongs_to :year
	has_many :regions, through: :reg_months
end
