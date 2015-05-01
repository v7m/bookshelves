class Book < ActiveRecord::Base

	belongs_to :shelf

	validates :title, presence: true,
					  length: { maximum: 70 }

	validates :author, presence: true,
					   length: { maximum: 70 }

	validates :status, presence: true	

	validates :description, allow_blank: true,
							length: { maximum: 150 }
	
	scope :not_readed, -> { where(status: :not_readed) } 
	scope :read_now, -> { where(status: :read_now) }
	scope :readed, -> { where(status: :readed) }
	scope :rand_book, -> { not_readed.order("RANDOM()").first }

	enum status: [:not_readed, :read_now, :readed]

end
