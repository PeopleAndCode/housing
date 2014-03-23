class Submission < ActiveRecord::Base
	has_one :profile
	has_one :private_area
	has_one :common_area
end
