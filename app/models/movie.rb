class Movie < ActiveRecord::Base
	has_many :rentals
end
