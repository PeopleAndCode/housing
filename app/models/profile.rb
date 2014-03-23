class Profile < ActiveRecord::Base
	belongs_to :submission

	LOCATION_OPTION = [['common', true], ['unit', false]]
end
