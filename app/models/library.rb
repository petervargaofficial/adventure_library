class Library < ActiveRecord::Base
	has_many :adventures, dependent: :destroy
	# Add checking for valid format of the library input
end
