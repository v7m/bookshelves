class Book < ActiveRecord::Base
	belongs_to :shelf

	validates :shelf_id, numericality: { only_integer: true }
	validates :title, length: { in: 1..50 }
	validates :author, length: { in: 1..30 }
	validates :created_at, null:false	
	

end
