class Shelf < ActiveRecord::Base

	has_many :books, dependent: :destroy
	belongs_to :user

	validates :name, presence: true,
					 length: { maximum: 30 }

end
