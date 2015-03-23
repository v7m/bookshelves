class Shelf < ActiveRecord::Base
	has_many :books

	validates :name, length: { in: 1..30 }

	
end
