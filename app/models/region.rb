class Region < ActiveRecord::Base
	has_many :months
	has_many :months, through: :reg_months
end
