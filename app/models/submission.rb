class Submission < ActiveRecord::Base
	has_one :user
	has_one :private_area, dependent: :destroy
	accepts_nested_attributes_for :private_areas
	has_one :common_area, dependent: :destroy
	accepts_nested_attributes_for :common_areas
end
