class Product < ApplicationRecord
	belongs_to :seller

	validates_presence_of :name, :price
	validates :name, length: { in: 4..20 }
end
