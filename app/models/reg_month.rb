class RegMonth < ActiveRecord::Base
	belongs_to :month
	belongs_to :region
end
